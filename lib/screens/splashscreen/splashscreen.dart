
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mealmonkey/screens/firstscreen/first_screen.dart';
import 'package:mealmonkey/screens/splashscreen/splashbody.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetofirstscreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashBody(),
    );
  }

  _navigatetofirstscreen() async {
    await Future.delayed(Duration(seconds: 4), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => FirstScreen(),
      ),
    );
  }
}
