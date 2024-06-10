import 'package:bobook/component/footer.dart';
import 'package:bobook/screen/details/news_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../constant/text_style.dart';

class ArticleScreen extends StatefulWidget {
  const ArticleScreen({super.key});

  @override
  State<ArticleScreen> createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Text(
              'News',
              style: AppTextStyle.appSemiBoldTextStyle(Colors.black87, 26),
            ),
          ),
          const SizedBox(height: 12),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NewsDetail()));
            },
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/news1.png',
                    height: 500,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Pustakawan Library & Knowledge Center Binus terpilih sebagai Juara 1 Pustakawan Berprestasi FPPTI DKI Jakarta 2023',
                    style:
                        AppTextStyle.appSemiBoldTextStyle(Colors.black87, 18),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 80),
          GestureDetector(
            onTap: () {},
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/news2.png',
                    height: 500,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Library & Knowledge Center as the Winner of Academic Library Innovation Award FPPTI DKI Jakarta 2023',
                    style:
                        AppTextStyle.appSemiBoldTextStyle(Colors.black87, 18),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 60),
          const FooterSection()
        ],
      ),
    );
  }
}
