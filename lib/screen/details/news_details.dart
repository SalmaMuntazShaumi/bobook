import 'package:bobook/component/footer.dart';
import 'package:bobook/constant/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NewsDetail extends StatelessWidget {
  const NewsDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
              padding: const EdgeInsets.all(24),
              child: Text(
                'Pustakawan Library & Knowledge Center Binus terpilih sebagai Juara 1 Pustakawan Berprestasi FPPTI DKI Jakarta 2023',
                style: AppTextStyle.appSemiBoldTextStyle(Colors.black87, 26),
                textAlign: TextAlign.center,
              )),
          const SizedBox(height: 12),
          Column(
            children: [
              Image.asset(
                'assets/news1.png',
                height: 500,
              ),
              const SizedBox(height: 8),
              Text(
                'by Library and Knowledge Center',
                style: AppTextStyle.appMediumTextStyle(Colors.black54, 16),
              )
            ],
          ),
          const SizedBox(height: 32),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 36),
            child: Text(
              'Juara 1 Pustakawan Berprestasi FPPTI DKI Jakarta 2023 Annisa atau yang lebih akrab dipanggil Icha adalah seorang pustakawan dari Library & Knowledge Center (LKC) Binus University. Icha mewakili rekan-rekan pustakawan LKC mengikuti kegiatan lomba pemilihan Pustakawan Berprestasi 2023 FPPTI DKI Jakarta dengan tema \“Digital Transformation and Society 5\.0 in The Interconnected World\” dan Icha pun terpilih sebagai Juara 1 Pustakawan Berprestasi FPPTI DKI Jakarta 2023, kemudian akan berlanjut ke proses seleksi berikutnya di tingkat nasional',
              style: AppTextStyle.appMediumTextStyle(Colors.black87, 16),
              overflow: TextOverflow.clip,
              textAlign: TextAlign.justify,
            ),
          ),
          const SizedBox(height: 60),
          const FooterSection()
        ],
      ),
    );
  }
}
