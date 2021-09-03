import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mealmonkey/screens/firstscreen/first_screen.dart';
import 'package:mealmonkey/screens/loginscreen/login_screen.dart';
import 'package:mealmonkey/screens/signupscreen/signupscreen.dart';
import 'package:mealmonkey/screens/splashscreen/splashscreen.dart';

void main() {
  runApp(MealMonkey());
}

class MealMonkey extends StatelessWidget {
  const MealMonkey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
