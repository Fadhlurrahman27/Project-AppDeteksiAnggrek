import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';

class MySplash extends StatefulWidget {
  const MySplash({super.key});

  @override
  State<MySplash> createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  void initState() {
    super.initState();
    splashStart();
  }

  splashStart() {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Home(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE8C4E8),
      body: SafeArea(
          child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 418,
              width: 356,
              child: Image.asset('assets/anggrek.png'),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      )),
    );
  }
}
