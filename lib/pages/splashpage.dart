import 'package:flutter/material.dart';
import 'package:paradise_hotel/pages/listpage.dart';

const Color mainThemeColor = Color(0xFF272D8D);

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.of(context).pop(
        MaterialPageRoute(
          builder: ((context) => const ListPage()),
        ),
      );
    });
    return Stack(
      // alignment: Alignment.center,
      children: [
        Container(
          color: mainThemeColor,
        ),
        const Align(
          alignment: Alignment.center,
          child: Icon(
            Icons.pool,
            color: Colors.white,
            size: 80,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: LinearProgressIndicator(
            valueColor: AlwaysStoppedAnimation(Colors.white.withOpacity(0.4)),
          ),
        )
      ],
    );
  }
}
