// class stocks {
//   final String product;
//   final String stock;
//   final String image;
//   const stocks(this.product, this.stock, this.image);
// }
//
// List<stocks> products = [
//   stocks(
//     'RSO',
//     '32',
//     'assets/vanguards.png'
//   ),
//   stocks(
//     'Corporate',
//     '100',
//     'assets/vanguards.png'
//   ),
//   stocks(
//     'RSO',
//     '32',
//     'assets/vanguards.png'
//   ),
//   stocks(
//     'Corporate',
//     '100',
//     'assets/vanguards.png'
//   ),
// ];

class Stock {
  final int id;
  final String stockName;
  final String stockPhoto;
  final String Course;
  final String Gender;
  final String Type;
  final String Body;

  Stock({
    required this.id,
    required this.stockName,
    required this.stockPhoto,
    required this.Course,
    required this.Gender,
    required this.Type,
    required this.Body,
  });

  String get photoUrl {
    return 'https://afternoon-mountain-03139-5af4f0a20604.herokuapp.com/uploads/uniform/$stockPhoto';
  }

  factory Stock.fromJson(Map<String, dynamic> json) {
    return Stock(
      id: json['id'],
      stockName: json['stockName'],
      stockPhoto: json['stockPhoto'],
      Course: json['Course'],
      Gender: json['Gender'],
      Type: json['Type'],
      Body: json['Body'],
    );
  }
}
