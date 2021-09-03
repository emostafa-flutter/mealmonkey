import 'package:flutter/material.dart';
import 'package:mealmonkey/screens/loginscreen/login_screen.dart';
import 'package:mealmonkey/screens/signupscreen/signupscreen.dart';
import 'package:mealmonkey/screens/widgets/customButton.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        width: double.infinity,

        //color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                Stack(
                  alignment: Alignment.topCenter,
                  clipBehavior: Clip.none,
                  children: [
                    Card(
                      color: Colors.red,
                      child: Container(
                        width: MediaQuery.of(context).size.width,

                        decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(color: Colors.transparent),
                          image: DecorationImage(

                              image: AssetImage('assets/images/bglogo.jpeg'),
                              fit: BoxFit.fill),
                        ),

                        height: MediaQuery.of(context).size.width * 1,
                        //width: double.infinity,
                      ),
                    ),
                    Positioned(
                      top: -50,
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.transparent),
                      ),
                    ),
                    Positioned(
                      top: 300,
                      child: Container(
                        height: 140,
                        width: 130,
                        // color: Colors.yellow,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/logo.png'),fit: BoxFit.fill),
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Image(
                  image: AssetImage('assets/images/mealmonkey.png'),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Text(
                  'Food Delivery',
                  style: TextStyle(
                      color: Colors.black, fontSize: 16, letterSpacing: 4),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Text(
                  '''
Discover The best foods from 1.000
 restaurant and fast delivery to your 
               deerstep
                ''',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      letterSpacing: 0,
                      wordSpacing: 3),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                CustomButton(
                  txt: 'Login',
                  icon: Icons.facebook,
                  //colorBG: Colors.red,

                  function: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                CustomButton(
                  colorTxt: Colors.deepOrange,
                  colorBorder: Colors.deepOrange,
                  txt: 'create an  Account',
                  colorBG: Colors.white,
                  function: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()));
                  },
                ),
                SizedBox(),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
