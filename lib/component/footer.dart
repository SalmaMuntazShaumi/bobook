import 'package:bobook/constant/colors.dart';
import 'package:bobook/constant/text_style.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(60),
      color: CustomColors.secondaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('BoBook Bandung',
                  style: AppTextStyle.appBoldTextStyle(
                      CustomColors.mainColor, 28)),
              const SizedBox(height: 42),
              Text('Email : bobook@bandung.edu',
                  style: AppTextStyle.appSemiBoldTextStyle(
                      CustomColors.mainColor, 18)),
              Text('Whatsapp : 0878-0967-0004',
                  style: AppTextStyle.appSemiBoldTextStyle(
                      CustomColors.mainColor, 18)),
            ],
          )),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Get to Know us more!',
                  style: AppTextStyle.appBoldTextStyle(
                      CustomColors.mainColor, 28)),
              const SizedBox(height: 42),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(MingCute.youtube_fill,
                      size: 42, color: CustomColors.mainColor),
                  SizedBox(width: 12),
                  Icon(MingCute.ins_fill,
                      size: 42, color: CustomColors.mainColor),
                  SizedBox(width: 12),
                  Icon(MingCute.facebook_line,
                      size: 42, color: CustomColors.mainColor)
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
