import 'package:bobook/component/books.dart';
import 'package:flutter/material.dart';

class BookList extends StatefulWidget {
  const BookList({super.key});

  @override
  State<BookList> createState() => _BookListState();
}

class _BookListState extends State<BookList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
          shrinkWrap: true,
          physics: AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const Row(
                children: [
                  Book(
                      image: 'assets/books/book1.png',
                      title: 'Berdamai dengan Rasa Malas'),
                  Book(
                      image: 'assets/books/book2.png',
                      title: 'Kupikir Segalanya akan Beres saat aku dewasa'),
                  Book(
                      image: 'assets/books/book3.png',
                      title: 'Sebuah seni untuk Bersikap bodoamat'),
                  Book(image: 'assets/books/book4.png', title: 'Ikigai'),
                ],
              ),
          itemCount: 4),
    );
  }
}

class BooksGrid extends StatelessWidget {
  const BooksGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      primary: false,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 5,
      children: [
        BooksContainer(
          image: 'assets/books/book1.png',
          title: 'TITLE',
          desc: 'desc',
          status: 'Available',
        ),
        BooksContainer(
          image: 'assets/books/book1.png',
          title: 'TITLE',
          desc: 'desc',
          status: 'Available',
        ),
        BooksContainer(
          image: 'assets/books/book1.png',
          title: 'TITLE',
          desc: 'desc',
          status: 'Not-available',
        ),
        BooksContainer(
          image: 'assets/books/book1.png',
          title: 'TITLE',
          desc: 'desc',
          status: 'Available',
        ),
        BooksContainer(
          image: 'assets/books/book1.png',
          title: 'TITLE',
          desc: 'desc',
          status: 'Not-available',
        ),
        BooksContainer(
          image: 'assets/books/book1.png',
          title: 'TITLE',
          desc: 'desc',
          status: 'Not-available',
        ),
        BooksContainer(
          image: 'assets/books/book1.png',
          title: 'TITLE',
          desc: 'desc',
          status: 'Available',
        ),
        BooksContainer(
          image: 'assets/books/book1.png',
          title: 'TITLE',
          desc: 'desc',
          status: 'Not-available',
        ),
        BooksContainer(
          image: 'assets/books/book1.png',
          title: 'TITLE',
          desc: 'desc',
          status: 'Not-available',
        ),
        BooksContainer(
          image: 'assets/books/book1.png',
          title: 'TITLE',
          desc: 'desc',
          status: 'Not-available',
        ),
        BooksContainer(
          image: 'assets/books/book1.png',
          title: 'TITLE',
          desc: 'desc',
          status: 'Available',
        ),
      ],
    );
  }
}
