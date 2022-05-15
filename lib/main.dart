import 'package:flutter/material.dart';
// import 'package:paradise_hotel/pages/listpage.dart';

// import 'pages/landingpage.dart';
import 'pages/splashpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
