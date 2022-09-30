import 'package:flutter/material.dart';

final iconBLACKROCK = Image.asset('assets/images/BLACKROCK.png', scale: 10);
final iconCLT0028 = Image.asset('assets/images/CLT0028.jpg', scale: 4);
final iconCLT0029 = Image.asset('assets/images/CLT0029.png', scale: 10);
final iconCLT2424 = Image.asset('assets/images/CLT2424.png', scale: 10);
final iconCLT2987 = Image.asset('assets/images/CLT2987.jpg', scale: 2);
final iconCLTFIDL = Image.asset('assets/images/CLTFIDL.jpg', scale: 2);
final iconCLTGRTN = Image.asset('assets/images/CLTGRTN.jpg', scale: .5);

class ClientIcon extends StatelessWidget {
  final String _clientId;

  ClientIcon(this._clientId);

  _getImage() {
    var image = 'BLACKROCK.png';

    switch(_clientId) {
      case 'BLACKROCK': image = 'BLACKROCK.png'; break;
      case 'CLT0028': image = 'CLT0028.jpg'; break;
      case 'CLT0029': image = 'CLT0029.png'; break;
      case 'CLT2424': image = 'CLT2424.png'; break;
      case 'CLT2987': image = 'CLT2987.jpg'; break;
      case 'CLTFIDL': image = 'CLTFIDL.jpg'; break;
      case 'CLTGRTN': image = 'CLTGRTN.jpg'; break;
    }

    return ExactAssetImage('assets/images/$image');
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 46.0,
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 23.0,
              child: CircleAvatar(
                radius: 20.0,
                backgroundImage: _getImage()
              )
            )
          ),
        ),
      ],
    );
  }
}

