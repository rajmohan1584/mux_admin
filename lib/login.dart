import 'package:flutter/material.dart';
import 'package:mux_admin/login_host.dart';
import 'package:mux_admin/nav.dart';
import 'package:mux_admin/src/api/api.dart';
import 'package:mux_admin/src/platform/activity.dart';
//import 'package:mux_admin/src/platform/alert.dart';
import 'package:mux_admin/src/platform/auth.dart';
import 'package:mux_admin/src/utils/hosts.dart';
import 'package:mux_admin/src/utils/images.dart';
import 'package:mux_admin/src/utils/screen.dart';
import 'package:mux_admin/src/utils/toast.dart';

const localLogin = false;

class LoginScreen extends StatefulWidget {
  LoginScreen();

  @override
  State<StatefulWidget> createState() {
    return _LoginScreen();
  }
}

class _LoginScreen extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool checked = false;
  bool bioShown = false;

  String host;
  String savedLoginId = '';
  String savedPassword = '';
  bool canFaceId = false;
  bool canTouchId = false;

  bool loading = false;

  bool loginSuccessfull = false;

  final loginIdCtlr = TextEditingController();
  final passwordCtlr = TextEditingController();

  @override
  void dispose() {
    loginIdCtlr.dispose();
    passwordCtlr.dispose();
    super.dispose();
  }

  @override
  initState() {
    bioShown = Api.getLogout();
    host = Api.getHost();

    TMAuth.getBioTypes(context, (face, touch) {
      setState(() {
        canFaceId = face;
        canTouchId = touch;
      });

      final x = TMAuth.getAuthFromKeyChain();
      x.then((v) {
        if (v != null) {
          final hst = v[0];
          final lid = v[1];
          final pwd = v[2];
          print("$lid - $pwd");
          setState(() {
            host = hst;
            savedLoginId = lid;
            savedPassword = pwd;
          });
        }
        setState(() => checked = true);
      });
    });

    super.initState();
  }

  Widget buildLogo(BuildContext context) {
    final logoW = SCREEN.percentWidth(125);
    final logoL = SCREEN.width - logoW / 2;
    final logoT = SCREEN.height - logoW / 2;

    return Positioned(
        top: logoT,
        left: logoL,
        child:
            IMAGES.assetImage('mux_admin2.png', width: logoW, height: logoW));
  }

  Widget clusterSelect(BuildContext context) {
    final top = SCREEN.height - 60;
    final cluster = HOSTS.clusterOfHost(host);
    return Positioned(
      top: top,
      left: 20,
      child: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(
                    builder: (context) => LoginHostSelector(host)))
                .then((value) {
              setState(() => host = value);
              Api.setHost(value);
              TOAST.success("Host set to $host");
            });
          },
          child: Column(
              children: [IMAGES.assetImage('cloud.png'), Text(cluster)])),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (loginSuccessfull) {
      return PlatformNav();
    }

    SCREEN.init(context);

    if (localLogin) {
      Future<bool> ret = Api.localLogin(context);
      ret.then((success) {
        if (success) {
          setState(() => loginSuccessfull = true);
        }
      });
    }
    if (!bioShown && checked) {
      setState(() => bioShown = true);
      if (host != null && savedLoginId != null && savedPassword != null) {
        // Attempt to do bio
        bool wait = canFaceId;
        TMAuth.autoLogin(context, host, wait, (success) {
          print("Login autoLogin:$success");
          if (success) {
            setState(() => loginSuccessfull = true);
          }
        });
      }
    }

    final children = <Widget>[
      Expanded(flex: 1, child: SizedBox()),
      _title(),
      SizedBox(height: 25),
      _loginIdField(),
      _passwordField(),
      SizedBox(height: 10),
      _submitButton(),
      Text('$savedLoginId @ $host'),
      Expanded(flex: 3, child: SizedBox())
    ];

    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: children,
            ),
          ),
          buildLogo(context),
          clusterSelect(context)
        ],
      ),
    )));
  }

  Widget _title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'MUX ',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Color(0xFF981D22),
          ),
          children: [
            TextSpan(
              text: 'Admin',
              style: TextStyle(color: Color(0xFF153257), fontSize: 30),
            ),
          ]),
    );
  }

  Widget _loginIdField() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Enter your Login ID", style: TextStyle(fontSize: 17)),
          SizedBox(height: 5),
          Row(
            children: <Widget>[
              Flexible(
                child: TextField(
                    controller: loginIdCtlr,
                    autocorrect: false,
                    obscureText: false,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: Color(0xfff3f3f4),
                        filled: true)),
              ),
              Container(
                  height: 50,
                  margin: EdgeInsets.all(0),
                  decoration: new BoxDecoration(color: Color(0xfff3f3f4)),
                  child: (loading)
                      ? TMActivityIndicator()
                      : IMAGES.assetImage("null.png"))
            ],
          )
        ],
      ),
    );
  }

  Widget _passwordField() {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Enter your Password",
                style: TextStyle(fontSize: 17),
              ),
              SizedBox(height: 5),
              Row(children: <Widget>[
                Flexible(
                    child: TextField(
                        controller: passwordCtlr,
                        autocorrect: false,
                        obscureText: true,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            fillColor: Color(0xfff3f3f4),
                            filled: true))),
                tryAutoLoginButton(context)
              ]),
            ]));
  }

  Widget _submitButton() {
    return GestureDetector(
      onTap: () {
        final id = loginIdCtlr.text;
        final pwd = passwordCtlr.text;
        print("Login Id:$id");
        print("Passwoed:$pwd");
        setState(() => loading = true);
        Api.login(context, host, id, pwd, (success) {
          setState(() => loading = false);
          if (success) {
            TMAuth.saveKeychain(host, id, pwd);
            setState(() => loginSuccessfull = true);
          }
        });
      },
      child: Container(
        child:
            Text('Login', style: TextStyle(fontSize: 20, color: Colors.white)),
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.grey.shade200,
                  offset: Offset(2, 4),
                  blurRadius: 5,
                  spreadRadius: 2)
            ],
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xff981D22), Color(0xff153257)])),
      ),
    );
  }

  Widget tryAutoLoginButton(context) {
    if (canTouchId || canFaceId) {
      String png = (canFaceId) ? "face-id.png" : "touch-id.png";
      Color color = (canFaceId) ? Colors.blue : Colors.red;

      if (host != null && savedLoginId != null && savedPassword != null) {
        return GestureDetector(
            onTap: (() {
              TMAuth.autoLogin(context, host, false, (success) {
                print("Login autoLogin:$success");
                if (success) {
                  setState(() => loginSuccessfull = true);
                }
              });
            }),
            child: Container(
                height: 50,
                margin: EdgeInsets.all(0),
                decoration: new BoxDecoration(color: Color(0xfff3f3f4)),
                child: IMAGES.assetImage(png, color: color)));
      } else {
        return Container(
            height: 50,
            margin: EdgeInsets.all(0),
            decoration: new BoxDecoration(color: Color(0xfff3f3f4)),
            child: IMAGES.assetImage("null.png", color: Colors.grey));
      }
    }
    return Container(
        height: 50,
        margin: EdgeInsets.all(0),
        decoration: new BoxDecoration(color: Color(0xfff3f3f4)),
        child: IMAGES.assetImage("null.png"));
  }
}
