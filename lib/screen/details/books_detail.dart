import 'package:bobook/component/footer.dart';
import 'package:bobook/constant/colors.dart';
import 'package:bobook/constant/text_style.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../component/book_list.dart';

class BooksDetail extends StatelessWidget {
  const BooksDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/books/book1.png', width: 182),
                const SizedBox(width: 14),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('JUDUL BUKU',
                        style: AppTextStyle.appSemiBoldTextStyle(
                            Colors.black87, 18)),
                    const SizedBox(height: 4),
                    Text('Penulis : Hayo syapa',
                        style: AppTextStyle.appMediumTextStyle(
                            Colors.black87, 14)),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(MingCute.eye_2_line, size: 14),
                            const SizedBox(width: 4),
                            Text('128 Views',
                                style: AppTextStyle.appRegulerTextStyle(
                                    Colors.black54, 14))
                          ],
                        ),
                        const SizedBox(width: 24),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(MingCute.star_line, size: 14),
                            const SizedBox(width: 4),
                            Text('4.6',
                                style: AppTextStyle.appRegulerTextStyle(
                                    Colors.black54, 14))
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: 350,
                      child: Text(
                        'desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc desc ',
                        style: AppTextStyle.appRegulerTextStyle(
                            Colors.black87, 16),
                        overflow: TextOverflow.clip,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18, vertical: 8),
                            decoration: BoxDecoration(
                                color: CustomColors.buttonColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: [
                                Icon(
                                  MingCute.heart_line,
                                  size: 24,
                                  color: Colors.white,
                                ),
                                const SizedBox(width: 12),
                                Text('Add to wishlist',
                                    style: AppTextStyle.appMediumTextStyle(
                                        Colors.white, 14))
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18, vertical: 8),
                            decoration: BoxDecoration(
                                color: CustomColors.buttonColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: [
                                Icon(
                                  MingCute.book_line,
                                  size: 24,
                                  color: Colors.white,
                                ),
                                const SizedBox(width: 12),
                                Text('Book',
                                    style: AppTextStyle.appMediumTextStyle(
                                        Colors.white, 14))
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 36),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Recommendation to read!',
                  style: AppTextStyle.appSemiBoldTextStyle(Colors.black87, 18),
                ),
                BookList(),
              ],
            ),
          ),
          const SizedBox(height: 60),
          const FooterSection()
        ],
      ),
    );
  }
}
