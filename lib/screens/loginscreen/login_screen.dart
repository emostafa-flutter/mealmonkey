import 'package:flutter/material.dart';
import 'package:mealmonkey/screens/signupscreen/signupscreen.dart';
import 'package:mealmonkey/screens/widgets/customButton.dart';
import 'package:mealmonkey/screens/widgets/customButtonSocial.dart';
import 'package:mealmonkey/screens/widgets/customformfield.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 32,
                            wordSpacing: 5,
                            letterSpacing: 1.2,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        'Add your details to Login',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: TextFormFieldCustom(
                      labeltxt: 'Your Name',
                      maxline: 1,
                    ),
                  ),
                  Container(
                    child: TextFormFieldCustom(
                      labeltxt: 'Password',
                      maxline: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomButton(
                      function: (){},
                      txt: 'Login',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'Forget your password ?',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        SizedBox(height: 30,),

                      ],
                    ),
                  ),
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Text(
                      'or login with',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomButtonSocial(
                      txt: 'Login with Facebook',
                      icon: Icons.facebook,
                      colorBG: Colors.deepPurple[600],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomButtonSocial(
                      icon: Icons.email,
                      txt: 'Login with Google',
                      colorBG: Colors.red[700],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.15,),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Dont have an Account? ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            letterSpacing: 1,
                          ),
                        ),
                        InkWell(
                          onTap: () {

                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                                color: Colors.deepOrange,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),


            ],
          ),

        ),
      ),
    );
  }
}
