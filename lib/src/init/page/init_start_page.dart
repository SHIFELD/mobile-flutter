import 'package:flutter/material.dart';
import 'package:shifeld_mobile_flutter/src/common/app_font.dart';

class InitStartPage extends StatelessWidget {
  const InitStartPage({super.key});

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
      )),
    );
  }
}
