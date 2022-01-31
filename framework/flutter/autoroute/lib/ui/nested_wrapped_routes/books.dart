import 'package:autoroute/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import '../../data/books.dart';
import '../../models/book.dart';
import '../sidenav.dart';

class BooksPage extends StatelessWidget {
  const BooksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SideNavPage(
      title: 'Books',
      child: ListView.separated(
        itemCount: bookList.length,
        itemBuilder: (context, index) {
          final book = bookList[index];

          return Column(
            children: [
              Card(
                child: ListTile(
                  title: Text(book.title),
                  onTap: () {
                    final router = AutoRouter.of(context);

                    router.push(BookDetailsRouter(
                      id: book.id,
                    ));
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    book.author,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          );
        },
        separatorBuilder: (context, index) => const Divider(
          color: Colors.transparent,
          height: 20.0,
        ),
      ),
    );
  }

  List<Book> get bookList => books;
}
