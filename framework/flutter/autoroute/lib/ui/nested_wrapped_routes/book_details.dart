import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../data/books.dart';
import '../../models/book.dart';
import '../sidenav.dart';

class BookDetailsPage extends StatelessWidget {
  final int id;

  const BookDetailsPage({
    @PathParam('booksId') required this.id,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final book = books.where((book) => book.id == id).first;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Book detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 24.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(child: Image.network(book.imageUrl)),
            const Divider(color: Colors.transparent),
            Expanded(
              child: Text(
                'is a ${book.genre.toLowerCase()} book with a ${book.rating} rating by ${book.author}',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
