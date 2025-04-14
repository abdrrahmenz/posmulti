import '../../../data/models/responses/transaction_response_model.dart';

class ProductModel {
  final int id;
  final String name;
  String? description;
  final double price;
  final String image;

  ProductModel({
    required this.id,
    required this.name,
    this.description,
    required this.price,
    required this.image,
  });
}

class ProductQtyModel {
  final ProductModel product;
  int qty;

  ProductQtyModel({
    required this.product,
    this.qty = 1,
  });
}

List<ProductModel> products = [
  ProductModel(
    id: 1,
    name: 'Ayam Original - Paha Bawah',
    description: '',
    price: 8000,
    image: 'assets/images/products/ayamoriginal.png',
  ),
  ProductModel(
    id: 2,
    name: 'Ayam Original - Sayap',
    description: '',
    price: 8000,
    image: 'assets/images/products/ayamoriginal.png',
  ),
  ProductModel(
    id: 3,
    name: 'Ayam Original - Paha Atas',
    description: '',
    price: 10000,
    image: 'assets/images/products/ayamoriginal.png',
  ),
  ProductModel(
    id: 4,
    name: 'Ayam Original - Dada',
    description: '',
    price: 10000,
    image: 'assets/images/products/ayamoriginal.png',
  ),
  ProductModel(
    id: 5,
    name: 'Ayam Geprek - Paha Bawah',
    description: '',
    price: 13000,
    image: 'assets/images/products/ayamgeprek.png',
  ),
  ProductModel(
    id: 6,
    name: 'Ayam Geprek - Sayap',
    description: '',
    price: 13000,
    image: 'assets/images/products/ayamgeprek.png',
  ),
  ProductModel(
    id: 7,
    name: 'Ayam Geprek - Paha Atas',
    description: '',
    price: 15000,
    image: 'assets/images/products/ayamgeprek.png',
  ),
  ProductModel(
    id: 8,
    name: 'Ayam Geprek - Dada',
    description: '',
    price: 15000,
    image: 'assets/images/products/ayamgeprek.png',
  ),
  ProductModel(
    id: 9,
    name: 'Ayam Keju - Paha Bawah',
    description: '',
    price: 12000,
    image: 'assets/images/products/ayamkeju.png',
  ),
  ProductModel(
    id: 10,
    name: 'Ayam Keju - Sayap',
    description: '',
    price: 12000,
    image: 'assets/images/products/ayamkeju.png',
  ),
  ProductModel(
    id: 11,
    name: 'Ayam Keju - Paha Atas',
    description: '',
    price: 14000,
    image: 'assets/images/products/ayamkeju.png',
  ),
  ProductModel(
    id: 12,
    name: 'Ayam Keju - Dada',
    description: '',
    price: 14000,
    image: 'assets/images/products/ayamkeju.png',
  ),
  ProductModel(
    id: 13,
    name: 'Ayam Mozarella - Paha Bawah',
    description: '',
    price: 13500,
    image: 'assets/images/products/ayammozarella.png',
  ),
  ProductModel(
    id: 14,
    name: 'Ayam Mozarella - Sayap',
    description: '',
    price: 13500,
    image: 'assets/images/products/ayammozarella.png',
  ),
  ProductModel(
    id: 15,
    name: 'Ayam Mozarella - Paha Atas',
    description: '',
    price: 15500,
    image: 'assets/images/products/ayammozarella.png',
  ),
  ProductModel(
    id: 16,
    name: 'Ayam Mozarella - Dada',
    description: '',
    price: 15500,
    image: 'assets/images/products/ayammozarella.png',
  ),
];

class TransactionGroup {
  final String date;
  final List<Transaction> items;

  TransactionGroup({required this.date, required this.items});
}

// class Transaction {
//   final String amount;
//   final String time;
//   final String id;

//   Transaction({required this.amount, required this.time, required this.id});
// }

// final List<TransactionGroup> transactions = [
//   TransactionGroup(
//     date: "Thursday, January 30, 2025",
//     items: [
//       Transaction(amount: "Rp 90.200", time: "14:59", id: "#1-1018"),
//       Transaction(amount: "Rp 134.200", time: "10:23", id: "#1-1017"),
//       Transaction(amount: "Rp 135.300", time: "07:42", id: "#1-1016"),
//     ],
//   ),
//   TransactionGroup(
//     date: "Wednesday, January 29, 2025",
//     items: [
//       Transaction(amount: "Rp 45.100", time: "22:30", id: "#1-1015"),
//     ],
//   ),
//   TransactionGroup(
//     date: "Tuesday, January 28, 2025",
//     items: [
//       Transaction(amount: "Rp 90.200", time: "22:37", id: "#1-1014"),
//       Transaction(amount: "Rp 46.200", time: "20:00", id: "#1-1013"),
//       Transaction(amount: "Rp 44.000", time: "19:55", id: "#1-1012"),
//     ],
//   ),
// ];
