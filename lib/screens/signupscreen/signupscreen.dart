import 'package:flutter/material.dart';
import 'package:mealmonkey/screens/loginscreen/login_screen.dart';
import 'package:mealmonkey/screens/widgets/customButton.dart';
import 'package:mealmonkey/screens/widgets/customformfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'Sign Up',
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
                    'Add your details to sign up',
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
                  labeltxt: 'Name',
                  maxline: 1,
                ),
              ),
              Container(
                child: TextFormFieldCustom(
                  labeltxt: 'Email',
                  maxline: 1,
                ),
              ),
              Container(
                child: TextFormFieldCustom(
                  labeltxt: 'Mobile No',
                  maxline: 1,
                ),
              ),
              Container(
                child: TextFormFieldCustom(
                  labeltxt: 'Adress',
                  maxline: 1,
                ),
              ),
              Container(
                child: TextFormFieldCustom(
                  labeltxt: 'Password',
                  maxline: 1,
                ),
              ),
              Container(
                child: TextFormFieldCustom(
                  labeltxt: 'Confirm Password',
                  maxline: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomButton(txt: 'Sign Up',function: (){

                },),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text(
                      'Already have an account ?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        letterSpacing: 1,
                      ),
                    ),
                    InkWell(
                      onTap: (){

                      },
                      child: Text('Login',style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
