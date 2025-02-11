import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shifeld_mobile_flutter/firebase_options.dart';
import 'package:shifeld_mobile_flutter/src/app.dart';

late SharedPreferences prefs;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  prefs = await SharedPreferences.getInstance();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SHIFELD',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0,
          color: Color(0xFF002254),
          titleTextStyle: TextStyle(
            color: Colors.white,
          ),
        ),
        scaffoldBackgroundColor: const Color(0xff002254),
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const App()),
      ],
    );
  }
}
