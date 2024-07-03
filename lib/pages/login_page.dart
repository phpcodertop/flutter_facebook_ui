import 'package:flutter/material.dart';
import '../pages/feed_page.dart';
import '../pages/signup_page.dart';

import '../widgets/app_button_field.dart';
import '../widgets/app_input_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff122130),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              // facebook logo
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/facebook-logo-lg.png',
                  width: 80,
                  height: 80,
                ),
              ),
          
              const SizedBox(
                height: 50,
              ),
          
              // mobile/email field
              const AppInputField(
                hintText: 'Mobile Number or email address',
              ),
          
              const SizedBox(
                height: 20,
              ),
          
              // password field
              const AppInputField(
                hintText: 'Password',
                isPassword: true,
                isLastFieldOnForm: true,
              ),
          
              const SizedBox(
                height: 20,
              ),
          
              // login link
              AppButtonField(
                text: 'Login',
                onPress: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => const FeedPage(),
                  ));
                },
                color: const Color(0xff0B63E1),
                textColor: Colors.white,
              ),
          
              // forget password
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: const Center(
                  child: Text(
                    'Forgotten Password',
                    style: TextStyle(
                        fontSize: 18, color: Colors.white, fontFamily: 'Tahoma'),
                  ),
                ),
              ),
          
              const SizedBox(
                height: 100,
              ),
              // create an account
              AppButtonField(
                text: 'Create new account',
                onPress: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => const SignupPage(),
                  ));
                },
                color: Colors.transparent,
                textColor: const Color(0xff0B63E1),
                border: Border.all(
                  color: const Color(0xff0B63E1),
                ),
              ),
          
              // meta logo
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/meta.png',
                  width: 80,
                  height: 80,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
