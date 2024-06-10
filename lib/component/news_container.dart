import 'package:bobook/constant/colors.dart';
import 'package:bobook/constant/text_style.dart';
import 'package:flutter/material.dart';

import '../screen/details/news_details.dart';

class NewsContainer extends StatefulWidget {
  final String title;
  final int index;
  final int currentIndex;
  final ValueChanged<int> onTap;
  const NewsContainer({
    super.key,
    required this.title,
    required this.index,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  State<NewsContainer> createState() => _NewsContainerState();
}

class _NewsContainerState extends State<NewsContainer> {
  int currentIndex = 0;
  void onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => NewsDetail())),
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: CustomColors.activeColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              const Icon(Icons.newspaper, size: 26, color: Colors.white),
              const SizedBox(width: 30),
              Container(
                width: 670,
                child: Text(
                  widget.title,
                  style: AppTextStyle.appMediumTextStyle(Colors.white, 16),
                  overflow: TextOverflow.clip,
                  maxLines: 1,
                ),
              )
            ],
          ),
        ));
  }
}
