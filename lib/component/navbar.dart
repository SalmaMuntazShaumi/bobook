import 'dart:ui' as ui;

import 'package:bobook/constant/colors.dart';
import 'package:bobook/constant/text_style.dart';
import 'package:bobook/screen/article.dart';
import 'package:bobook/screen/borrow_books.dart';
import 'package:bobook/screen/contact_us.dart';
import 'package:bobook/screen/dashboard.dart';
import 'package:bobook/screen/details/news_details.dart';
import 'package:bobook/screen/profile.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 0;
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  void onItemTapped(int index) {
    setState(() {
      currentIndex = index;
      _navigatorKey.currentState!.push(
        PageRouteBuilder(
          pageBuilder: (context, animation1, animation2) => getScreen(index),
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
        ),
      );
    });
  }

  Widget getScreen(int index) {
    switch (index) {
      case 0:
        return DashboardScreen(onNavItemTapped: onItemTapped);
      case 1:
        return const BorrowBooksScreen();
      case 2:
        return const ArticleScreen();
      case 3:
        return const ContactUsScreen();
      case 4:
        return const ProfileScreen();
      case 5:
        return const NewsDetail();
      default:
        return DashboardScreen(onNavItemTapped: onItemTapped);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: () async {
          if (_navigatorKey.currentState!.canPop()) {
            _navigatorKey.currentState!.pop();
            return false;
          }
          return true;
        },
        child: Navigator(
          key: _navigatorKey,
          onGenerateRoute: (routeSettings) {
            return MaterialPageRoute(
              settings: routeSettings,
              builder: (context) => getScreen(currentIndex),
            );
          },
        ),
      ),
      appBar: PreferredSize(
        preferredSize: const ui.Size.fromHeight(100.0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
          color: CustomColors.secondaryColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 80,
                width: 150,
                child: Image.asset('assets/logo.png'),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  _NavBarItem(
                    title: 'Home',
                    index: 0,
                    onTap: onItemTapped,
                    currentIndex: currentIndex,
                  ),
                  const SizedBox(width: 18),
                  _NavBarItem(
                    title: 'Borrow Books',
                    index: 1,
                    onTap: onItemTapped,
                    currentIndex: currentIndex,
                  ),
                  const SizedBox(width: 18),
                  _NavBarItem(
                    title: 'Article',
                    index: 2,
                    onTap: onItemTapped,
                    currentIndex: currentIndex,
                  ),
                  const SizedBox(width: 18),
                  _NavBarItem(
                    title: 'Contact Us',
                    index: 3,
                    onTap: onItemTapped,
                    currentIndex: currentIndex,
                  ),
                  const SizedBox(width: 18),
                  _NavBarItem(
                    title: 'Profile',
                    index: 4,
                    onTap: onItemTapped,
                    currentIndex: currentIndex,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  final int index;
  final int currentIndex;
  final ValueChanged<int> onTap;

  const _NavBarItem({
    required this.title,
    required this.index,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isActive = index == currentIndex;
    final ButtonStyle style = ElevatedButton.styleFrom(
      backgroundColor:
          isActive ? CustomColors.activeColor : CustomColors.inactiveColor,
      textStyle: const TextStyle(fontSize: 20),
      elevation: 0,
      foregroundColor: CustomColors.activeColor,
      surfaceTintColor: CustomColors.activeColor,
      shadowColor: CustomColors.inactiveColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
    );

    return ElevatedButton(
      onHover: (value) => style,
      style: style,
      onPressed: () => onTap(index),
      child: Text(
        title,
        style: AppTextStyle.appMediumTextStyle(Colors.white, 20),
      ),
    );
  }
}
