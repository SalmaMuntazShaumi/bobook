import 'package:flutter/material.dart';

import 'news_container.dart';

class NewsList extends StatefulWidget {
  const NewsList({super.key});

  @override
  State<NewsList> createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  int currentIndex = 0;
  void onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) => Column(
                children: [
                  NewsContainer(
                      title:
                          'Pustakawan Library & Knowledge Center Binus terpilih sebagai Juara 1 Pustakawan Berprestasi FPPTI DKI Jakarta 2023',
                      index: 0,
                      onTap: onItemTapped,
                      currentIndex: currentIndex),
                  SizedBox(height: 12),
                  NewsContainer(
                      title:
                          'Library & Knowledge Center as the Winner of Academic Library Innovation Award FPPTI DKI Jakarta 2023',
                      index: 1,
                      onTap: onItemTapped,
                      currentIndex: currentIndex),
                  SizedBox(height: 12),
                  NewsContainer(
                      title: 'Terdapat Inovasi Baru Smart Locker pada LKC ',
                      index: 2,
                      onTap: onItemTapped,
                      currentIndex: currentIndex),
                ],
              )),
    );
  }
}
