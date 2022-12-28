import 'package:flutter/material.dart';
import 'package:testsociout/widgets/login_field.dart';
import 'package:testsociout/widgets/gradient_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: deviceHeight * 1.0,
        width: deviceWidth * 1.0,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(child: Image.asset('assets/images/signin_balls.png')),
                Container(
                  child: const Text(
                    'Welcome to the Sociout',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  child: const Text(
                    'Frame Your Social Space Here',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  child: const LoginField(hintText: 'Email'),
                ),
                const SizedBox(height: 15),
                const LoginField(hintText: 'Password'),
                const SizedBox(height: 15),
                const GradientButton(),
                const SizedBox(height: 15),
                Text(
                  'Already A User ? SignUp ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
