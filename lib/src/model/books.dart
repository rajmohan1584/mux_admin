//import 'package:mux_admin/src/utils/util.dart';
import 'package:mux_admin/src/utils/json.dart';
import 'package:mux_admin/src/utils/format.dart';

class BookSide {
  bool _acceptMoreQuantity;
  int _availableQuantity;
  int _calcStatus;
  int _minQuantity;
  double _price;
  int _quantity;
  int _spread;
  bool _tradable;
  double _yield;
  int _requestId;
  String _type;
  String _requestType;
  String _actorId;
  String _requestXref;
  bool _crossed;
  String _contra;
  int _rating;
  String _indication;
  DateTime _created;

  bool get acceptMoreQuantity => _acceptMoreQuantity;
  int get availableQuantity => _availableQuantity;
  int get calcStatus => _calcStatus;
  int get minQuantity => _minQuantity;
  double get price => _price;
  int get quantity => _quantity;
  int get spread => _spread;
  bool get tradable => _tradable;
  double get eeld => _yield;
  int get requestId => _requestId;
  String get type => _type;
  String get requestType => _requestType;
  String get actorId => _actorId;
  String get requestXref => _requestXref;
  bool get crossed => _crossed;
  String get contra => _contra;
  int get rating => _rating;
  String get indication => _indication;
  DateTime get created => _created;

  String get availableQuantityStr => FMT.qty(_availableQuantity);
  String get minQuantityStr => FMT.qty(_minQuantity);
  String get priceStr => FMT.price(_price);
  String get quantityStr => FMT.qty(_quantity);
  String get spreadStr => FMT.spread(_spread);
  String get tradableStr => FMT.yesNo(_tradable);
  String get yieldStr => FMT.eeld(_yield);
  String get requestIdStr => FMT.qty(_requestId);
  String get crossedStr => FMT.yesNo(_crossed);
  String get ratingStr => FMT.qty(_rating);
  String get createdDateStr => FMT.date(_created);
  String get createdTimeStr => FMT.time(_created);
  String get createdDateShortStr => FMT.shortDate(_created);
  
  static BookSide fromJson(j) {
    BookSide side = BookSide();
    if (j == null) return side;

    side._acceptMoreQuantity = JSON.parseBool(j, 'acceptMoreQuantity');
    side._tradable = JSON.parseBool(j, 'tradable');
    side._crossed = JSON.parseBool(j, 'crossed');

    side._availableQuantity = JSON.parseInt(j, 'availableQuantity');
    side._calcStatus = JSON.parseInt(j, 'calcStatus');
    side._minQuantity = JSON.parseInt(j, 'minQuantity');
    side._quantity = JSON.parseInt(j, 'quantity');
    side._spread = JSON.parseInt(j, 'spread');
    side._requestId = JSON.parseInt(j, 'requestId');
    side._rating = JSON.parseInt(j, 'rating');

    side._price = JSON.parseDouble(j, 'price');
    side._yield = JSON.parseDouble(j, 'yield');

    side._type = JSON.parseString(j, 'type');
    side._requestType = JSON.parseString(j, 'requestType');
    side._actorId = JSON.parseString(j, 'actorId');
    side._requestXref = JSON.parseString(j, 'requestXref');
    side._contra = JSON.parseString(j, 'contra');
    side._indication = JSON.parseString(j, 'indication');
    side._created = JSON.parseDate(j, 'created');

    return side;
  }

  copyFrom(BookSide from) {
     _acceptMoreQuantity = from._acceptMoreQuantity;
     _availableQuantity = from._availableQuantity;
     _calcStatus = from._calcStatus;
     _minQuantity = from._minQuantity;
     _price = from._price;
     _quantity = from._quantity;
     _spread = from._spread;
     _tradable = from._tradable;
     _yield = from._yield;
     _requestId = from._requestId;
     _type = from._type;
     _requestType = from._requestType;
     _actorId = from._actorId;
     _requestXref = from._requestXref;
     _crossed = from._crossed;
     _contra = from._contra;
     _rating = from._rating;
     _indication = from._indication;
     _created = from._created;
  }

  static List<BookSide> loadBookSides(j, String side) {
    List<BookSide> sides = [];

    if (j == null) return sides;
    final jsides = j[side];

    if (jsides == null || jsides.length <= 0) return sides;

    for (var i=0; i<jsides.length; i++) {
      final side = BookSide.fromJson(jsides[i]);
      sides.add(side);
    }

    return sides;
  }

}

class Book {
  BookSide _bidBook = BookSide();
  BookSide _askBook = BookSide();

  BookSide get bidBook => _bidBook;
  BookSide get askBook => _askBook;

  void copyBid(BookSide from) { _bidBook.copyFrom(from);}
  void copyAsk(BookSide from) { _askBook.copyFrom(from);}
}

class Books {
  final List<Book> _books = [];

  List<Book> get books => _books;

  int get length => _books.length;

  int reload(j) {
    _books.removeRange(0, _books.length);
    if (j == null) return 0;

    final List<BookSide> askBook = BookSide.loadBookSides(j, 'askBook');
    final List<BookSide> bidBook = BookSide.loadBookSides(j, 'bidBook');

    int i = 0;
    while (i < askBook.length || i < bidBook.length) {
      Book b = Book();
      if (i < bidBook.length) {
        b.copyBid(bidBook[i]);
      }
      if (i < askBook.length) {
        b.copyAsk(askBook[i]);
      } 
      // if (o.ask_firmTime) o.firmTime = formatFirmTime(o.ask_firmTime);
      _books.add(b);
      i++;
    }

    return _books.length;
  }
}
