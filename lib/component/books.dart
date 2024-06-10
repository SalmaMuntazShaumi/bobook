import 'package:bobook/constant/colors.dart';
import 'package:bobook/constant/text_style.dart';
import 'package:bobook/screen/details/books_detail.dart';
import 'package:flutter/material.dart';

class Book extends StatelessWidget {
  final String image, title;
  const Book({required this.image, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => BooksDetail())),
      child: Container(
        width: 130,
        margin: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            Image.asset(
              image,
              width: 250,
              height: 250,
            ),
            Text(
              title,
              style: AppTextStyle.appMediumTextStyle(
                  CustomColors.secondaryColor, 14),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            )
          ],
        ),
      ),
    );
  }
}

class BooksContainer extends StatefulWidget {
  final String image, title, desc, status;
  const BooksContainer(
      {required this.desc,
      required this.title,
      required this.image,
      required this.status,
      super.key});

  @override
  State<BooksContainer> createState() => _BooksContainerState();
}

class _BooksContainerState extends State<BooksContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => const BooksDetail())),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: CustomColors.mainColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.status,
                style: AppTextStyle.appMediumTextStyle(Colors.black87, 14)),
            const SizedBox(height: 12),
            Image.asset(
              widget.image,
              width: 100,
            ),
            const SizedBox(height: 8),
            Text(widget.title,
                style: AppTextStyle.appMediumTextStyle(Colors.black87, 16)),
            const SizedBox(height: 12),
            Text(widget.desc,
                style: AppTextStyle.appRegulerTextStyle(Colors.black54, 14),
                overflow: TextOverflow.ellipsis)
          ],
        ),
      ),
    );
  }
}
