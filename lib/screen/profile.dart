import 'package:bobook/component/book_list.dart';
import 'package:bobook/component/footer.dart';
import 'package:bobook/constant/text_style.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Text(
              'Profile',
              style: AppTextStyle.appSemiBoldTextStyle(Colors.black87, 26),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/profile_non.png', height: 120),
                const SizedBox(width: 24),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Salma',
                        style: AppTextStyle.appSemiBoldTextStyle(
                            Colors.black87, 24)),
                    const SizedBox(height: 12),
                    Text(
                      '2702267262',
                      style:
                          AppTextStyle.appMediumTextStyle(Colors.black54, 18),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 60),
          Container(
            height: 400,
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('History BoBooked',
                    style: AppTextStyle.appBoldTextStyle(Colors.black87, 24)),
                const SizedBox(height: 32),
                Text(
                  'No History detected. Go add some',
                  style: AppTextStyle.appSemiBoldTextStyle(Colors.black87, 18),
                )
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
