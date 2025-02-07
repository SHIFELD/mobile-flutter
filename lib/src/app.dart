import 'package:shifeld_mobile_flutter/main.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          count.toString(),
          style: const TextStyle(
            fontSize: 80,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          count++;
        });
      }),
    );
  }
}
