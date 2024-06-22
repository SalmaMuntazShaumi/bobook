import 'package:bobook/component/footer.dart';
import 'package:bobook/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../constant/text_style.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Text(
              'Contact Us',
              style: AppTextStyle.appSemiBoldTextStyle(Colors.black87, 26),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'We\'re here to help. Chat our friendlyteam 24/7 and get set up and ready to go in just 10 minutes!',
              style: AppTextStyle.appSemiBoldTextStyle(Colors.grey, 16),
            ),
          ),
          const SizedBox(height: 80),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black45),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(MingCute.chat_1_line),
                    const SizedBox(height: 12),
                    Text('Chat to Support',
                        style: AppTextStyle.appSemiBoldTextStyle(
                            Colors.black87, 18)),
                    const SizedBox(height: 8),
                    Text('We\'re here to help.',
                        style: AppTextStyle.appMediumTextStyle(
                            Colors.black87, 14)),
                  ],
                ),
              ),
              const SizedBox(width: 24),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black45),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(MingCute.location_line),
                    const SizedBox(height: 12),
                    Text('Visit us',
                        style: AppTextStyle.appSemiBoldTextStyle(
                            Colors.black87, 18)),
                    const SizedBox(height: 8),
                    Text('Visit our office.',
                        style: AppTextStyle.appMediumTextStyle(
                            Colors.black87, 14)),
                  ],
                ),
              ),
              const SizedBox(width: 24),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black45),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(MingCute.chat_1_line),
                    const SizedBox(height: 12),
                    Text('call Us',
                        style: AppTextStyle.appSemiBoldTextStyle(
                            Colors.black87, 18)),
                    const SizedBox(height: 8),
                    Text('Mon-Fri from 08AM to 5PM',
                        style: AppTextStyle.appMediumTextStyle(
                            Colors.black87, 14)),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 80),
          Container(
            width: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Message Us',
                    style: AppTextStyle.appBoldTextStyle(Colors.black87, 28)),
                const SizedBox(height: 8),
                Text('Mon-Fri from 08AM to 5PM',
                    style: AppTextStyle.appMediumTextStyle(
                        CustomColors.mainColor, 18)),
                const SizedBox(height: 32),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Name',
                        style: AppTextStyle.appMediumTextStyle(
                            Colors.black87, 18)),
                    const SizedBox(height: 12),
                    SizedBox(
                      width: 800,
                      height: 60,
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8))),
                        controller: _nameController,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Email',
                        style: AppTextStyle.appMediumTextStyle(
                            Colors.black87, 18)),
                    const SizedBox(height: 12),
                    SizedBox(
                      width: 800,
                      height: 60,
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8))),
                        controller: _emailController,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Phone Number',
                        style: AppTextStyle.appMediumTextStyle(
                            Colors.black87, 18)),
                    const SizedBox(height: 12),
                    SizedBox(
                      width: 800,
                      height: 60,
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8))),
                        controller: _phoneController,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Message Us',
                        style: AppTextStyle.appMediumTextStyle(
                            Colors.black87, 18)),
                    const SizedBox(height: 12),
                    SizedBox(
                      width: 800,
                      height: 60,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8))),
                        controller: _messageController,
                      ),
                    ),
                    SizedBox(height: 24),
                    SizedBox(
                        height: 60,
                        width: 800,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Send Message 📨',
                                style: AppTextStyle.appSemiBoldTextStyle(
                                    Colors.white, 18)),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateColor.resolveWith(
                                  (states) => CustomColors.buttonColor),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  // Change your radius here
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            )))
                  ],
                ),
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
