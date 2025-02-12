import 'package:flutter/material.dart';
import 'package:shifeld_mobile_flutter/src/common/app_font.dart';
import 'package:shifeld_mobile_flutter/src/common/btn.dart';
import 'package:get/get.dart';

class InitStartPage extends StatelessWidget {
  final Function() onStart;

  const InitStartPage({super.key, required this.onStart});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              child: Image.asset(
                'assets/images/logo.png',
              ),
            ),
            const SizedBox(height: 40),
            const AppFont(
              '당신은 Shifeld 안에 있습니다',
              fontWeight: FontWeight.bold,
              size: 20,
            ),
            const AppFont(
              '지금 동네를 선택하고 Shifeld를 활성화 해보세요!',
              align: TextAlign.center,
              size: 18,
              color: Colors.white,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
            left: 25, right: 25, bottom: 25 + Get.mediaQuery.padding.bottom),
        child: Btn(
          onTap: onStart,
          child: const AppFont(
            '시작하기',
            align: TextAlign.center,
            size: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
