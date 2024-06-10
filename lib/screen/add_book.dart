import 'package:bobook/component/footer.dart';
import 'package:bobook/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:material_dialogs/material_dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';
import 'package:material_dialogs/widgets/buttons/icon_outline_button.dart';

import '../constant/text_style.dart';

class AddBook extends StatefulWidget {
  const AddBook({super.key});

  @override
  State<AddBook> createState() => _AddBookState();
}

class _AddBookState extends State<AddBook> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _authorController = TextEditingController();
  final TextEditingController _publisherController = TextEditingController();
  final TextEditingController _descController = TextEditingController();
  final TextEditingController _yearController = TextEditingController();
  final TextEditingController _pageAmountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 24, left: 24),
              child: Text(
                'Add New Book',
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
                    Text('Please enter the book\’s information',
                        style: AppTextStyle.appSemiBoldTextStyle(
                            Colors.black54, 16)),
                    const SizedBox(height: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Title',
                            style: AppTextStyle.appMediumTextStyle(
                                Colors.black87, 14)),
                        const SizedBox(height: 6),
                        SizedBox(
                          width: 500,
                          height: 35,
                          child: TextFormField(
                            controller: _titleController,
                            decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.only(top: 4, left: 12),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8))),
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text('Author\s Name',
                            style: AppTextStyle.appMediumTextStyle(
                                Colors.black87, 14)),
                        const SizedBox(height: 6),
                        SizedBox(
                          width: 500,
                          height: 35,
                          child: TextFormField(
                            controller: _authorController,
                            decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.only(top: 4, left: 12),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8))),
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text('Pusblisher',
                            style: AppTextStyle.appMediumTextStyle(
                                Colors.black87, 14)),
                        const SizedBox(height: 6),
                        SizedBox(
                          width: 500,
                          height: 35,
                          child: TextFormField(
                            controller: _publisherController,
                            decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.only(top: 4, left: 12),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8))),
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text('Synopsis',
                            style: AppTextStyle.appMediumTextStyle(
                                Colors.black87, 14)),
                        const SizedBox(height: 6),
                        SizedBox(
                          width: 500,
                          height: 35,
                          child: TextFormField(
                            controller: _descController,
                            decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.only(top: 4, left: 12),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8))),
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text('Year Published',
                            style: AppTextStyle.appMediumTextStyle(
                                Colors.black87, 14)),
                        const SizedBox(height: 6),
                        SizedBox(
                          width: 500,
                          height: 35,
                          child: TextFormField(
                            controller: _yearController,
                            decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.only(top: 4, left: 12),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8))),
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text('Page Amount',
                            style: AppTextStyle.appMediumTextStyle(
                                Colors.black87, 14)),
                        const SizedBox(height: 6),
                        SizedBox(
                          width: 500,
                          height: 35,
                          child: TextFormField(
                            controller: _pageAmountController,
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
                                  'Buku berhasil ditambahkan!',
                                  style: AppTextStyle.appMediumTextStyle(
                                      Colors.black87, 14),
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
                Image.asset('assets/vector1.png', width: 500)
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
