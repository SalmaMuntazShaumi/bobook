import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../component/footer.dart';
import '../constant/colors.dart';
import '../constant/text_style.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _univController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _durationController = TextEditingController();
  final TextEditingController _pageAmountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 24, left: 24),
              child: Text(
                'BOOK BORROWER INFORMATION',
                style: AppTextStyle.appSemiBoldTextStyle(Colors.black87, 26),
              )),
          Container(
            margin: const EdgeInsets.only(left: 24, right: 200),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Please enter your information',
                        style: AppTextStyle.appSemiBoldTextStyle(
                            Colors.black54, 16)),
                    const SizedBox(height: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Name',
                            style: AppTextStyle.appMediumTextStyle(
                                Colors.black87, 14)),
                        const SizedBox(height: 6),
                        SizedBox(
                          width: 500,
                          height: 35,
                          child: TextFormField(
                            controller: _nameController,
                            decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.only(top: 4, left: 12),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8))),
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text('Phone Number',
                            style: AppTextStyle.appMediumTextStyle(
                                Colors.black87, 14)),
                        const SizedBox(height: 6),
                        SizedBox(
                          width: 500,
                          height: 35,
                          child: TextFormField(
                            controller: _phoneController,
                            decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.only(top: 4, left: 12),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8))),
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text('Company/University',
                            style: AppTextStyle.appMediumTextStyle(
                                Colors.black87, 14)),
                        const SizedBox(height: 6),
                        SizedBox(
                          width: 500,
                          height: 35,
                          child: TextFormField(
                            controller: _univController,
                            decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.only(top: 4, left: 12),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8))),
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text('Email',
                            style: AppTextStyle.appMediumTextStyle(
                                Colors.black87, 14)),
                        const SizedBox(height: 6),
                        SizedBox(
                          width: 500,
                          height: 35,
                          child: TextFormField(
                            controller: _emailController,
                            decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.only(top: 4, left: 12),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8))),
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text('Booking duration',
                            style: AppTextStyle.appMediumTextStyle(
                                Colors.black87, 14)),
                        const SizedBox(height: 6),
                        SizedBox(
                          width: 500,
                          height: 35,
                          child: TextFormField(
                            controller: _durationController,
                            decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.only(top: 4, left: 12),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8))),
                          ),
                        ),
                        const SizedBox(height: 12),
                        GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text(
                                  'You\'re all Set!',
                                  style: AppTextStyle.appMediumTextStyle(
                                      Colors.black87, 14),
                                ),
                                content: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text('Giveaway ID: 5ZAUDN125S.',
                                        style: AppTextStyle.appMediumTextStyle(
                                            Colors.black54, 12)),
                                    const SizedBox(height: 8),
                                    Text(
                                        'Don’t forget to take a screenshot of this page. \nPlease note any vandalism will be processed to your company\/university and reported to the main Library Department',
                                        style: AppTextStyle.appRegulerTextStyle(
                                            Colors.black54, 12))
                                  ],
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('Close',
                                        style:
                                            AppTextStyle.appSemiBoldTextStyle(
                                                CustomColors.buttonColor, 14)),
                                  ),
                                ],
                                backgroundColor: Colors.white,
                              ),
                            );
                          },
                          child: Container(
                            width: 500,
                            height: 35,
                            decoration: BoxDecoration(
                                color: CustomColors.buttonColor,
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                                child: Text(
                              'Submit',
                              style: AppTextStyle.appSemiBoldTextStyle(
                                  Colors.white, 14),
                            )),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Image.asset('assets/vector2.png', width: 500)
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
