import 'package:bobook/component/book_list.dart';
import 'package:bobook/component/footer.dart';
import 'package:bobook/constant/colors.dart';
import 'package:bobook/screen/add_book.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../constant/text_style.dart';

class BorrowBooksScreen extends StatefulWidget {
  const BorrowBooksScreen({super.key});

  @override
  State<BorrowBooksScreen> createState() => _BorrowBooksScreenState();
}

class _BorrowBooksScreenState extends State<BorrowBooksScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Text(
              'Borrow Books',
              style: AppTextStyle.appSemiBoldTextStyle(Colors.black87, 26),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
            child: Row(
              children: [
                const Icon(MingCute.search_line, size: 32),
                const SizedBox(width: 12),
                SizedBox(
                  width: 300,
                  height: 35,
                  child: TextFormField(
                    controller: _searchController,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 4, left: 12),
                        hintText: 'Search Here ...',
                        alignLabelWithHint: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 18),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Click the cover to see the details and status!',
                  style: AppTextStyle.appSemiBoldTextStyle(Colors.black87, 16),
                ),
                const Spacer(),
                TextButton(
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      foregroundColor: CustomColors.inactiveColor,
                      surfaceTintColor: CustomColors.inactiveColor,
                      shadowColor: CustomColors.inactiveColor,
                    ),
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddBook())),
                    child: Text(
                      '+ ADD BOOK',
                      style:
                          AppTextStyle.appSemiBoldTextStyle(Colors.black87, 16),
                    )),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            height: MediaQuery.of(context).size.height,
            child: const BooksGrid(),
          ),
          const SizedBox(height: 42),
          const FooterSection()
        ],
      ),
    );
  }
}
