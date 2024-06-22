import 'package:bobook/component/book_list.dart';
import 'package:bobook/component/footer.dart';
import 'package:bobook/component/news_container.dart';
import 'package:bobook/component/news_list.dart';
import 'package:bobook/constant/colors.dart';
import 'package:bobook/constant/text_style.dart';
import 'package:bobook/screen/borrow_books.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../component/navbar.dart';

class DashboardScreen extends StatefulWidget {
  final ValueChanged<int> onNavItemTapped;

  const DashboardScreen({Key? key, required this.onNavItemTapped})
      : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  late PageController _pageController;

  List<String> images = [
    'assets/slider.png',
    'assets/slider.png',
    'assets/slider.png',
  ];

  int activePage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Text(
              'Welcome Salma!',
              style: AppTextStyle.appSemiBoldTextStyle(Colors.black87, 26),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 330,
                child: PageView.builder(
                  itemCount: images.length,
                  pageSnapping: true,
                  controller: _pageController,
                  onPageChanged: (page) {
                    setState(() {
                      activePage = page;
                    });
                  },
                  itemBuilder: (context, pagePosition) {
                    bool active = pagePosition == activePage;
                    return slider(images, pagePosition, active);
                  },
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: indicators(images.length, activePage),
              ),
            ],
          ),
          const SizedBox(height: 32),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Recommendation to read!',
                      style:
                          AppTextStyle.appSemiBoldTextStyle(Colors.black87, 18),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {
                        widget.onNavItemTapped(
                            1); // Navigate to "Borrow Books" tab
                      },
                      child: Text(
                        'View All →',
                        style: AppTextStyle.appBoldTextStyle(
                          CustomColors.buttonColor,
                          14,
                        ),
                      ),
                    ),
                  ],
                ),
                BookList(),
              ],
            ),
          ),
          Container(
            height: 300,
            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'News',
                      style:
                          AppTextStyle.appSemiBoldTextStyle(Colors.black87, 18),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {
                        widget.onNavItemTapped(
                            2); // Navigate to "Borrow Books" tab
                      },
                      child: Text(
                        'View All →',
                        style: AppTextStyle.appBoldTextStyle(
                          CustomColors.buttonColor,
                          14,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),
                NewsList(),
              ],
            ),
          ),
          FooterSection(),
        ],
      ),
    );
  }

  AnimatedContainer slider(images, pagePosition, active) {
    double margin = active ? 2 : 12;

    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOutCubic,
      margin: EdgeInsets.all(margin),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(images[pagePosition]))),
    );
  }

  imageAnimation(PageController animation, images, pagePosition) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, widget) {
        print(pagePosition);
        return SizedBox(
          width: MediaQuery.sizeOf(context).width,
          child: widget,
        );
      },
      child: Container(
        child: Image.network(images[pagePosition]),
      ),
    );
  }

  List<Widget> indicators(imagesLength, currentIndex) {
    return List<Widget>.generate(imagesLength, (index) {
      return Container(
        margin: EdgeInsets.all(3),
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            color: currentIndex == index
                ? CustomColors.buttonColor
                : CustomColors.mainColor,
            shape: BoxShape.circle),
      );
    });
  }
}
