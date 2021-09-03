import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bg.jpeg'),
              fit: BoxFit.cover
        )
      ),
      child: Center(
        child: Image.asset('assets/images/splash.jpeg'),
      )
    );
  }
}
