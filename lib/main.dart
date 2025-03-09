import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  final String title;
  final String author;
  final String imageUrl;
  final String price;

  const BookItem(
      {super.key,
      required this.title,
      required this.author,
      required this.imageUrl,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              author,
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            SizedBox(height: 16),
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Buy Now"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Book Store")),
      body: ListView(
        children: [
          BookItem(
            title: "Criminal Psychology",
            author: "Hans Gross",
            imageUrl:
                "https://m.media-amazon.com/images/I/81ENM7en25L._SY522_.jpg",
            price: "1200 LKR",
          ),
          BookItem(
            title: "The Psychology of Crime",
            author: "Philip Feldman",
            imageUrl: "https://pictures.abebooks.com/isbn/9780521337328-us.jpg",
            price: "1500 LKR",
          ),
          BookItem(
            title: "Forensic Psychology",
            author: "David Canter ",
            imageUrl:
                "https://m.media-amazon.com/images/I/81rYRKzRwJL._SL1500_.jpg",
            price: "1350 LKR",
          ),
        ],
      ),
    ),
  ));
}
