import 'package:flutter/material.dart';
import '../pages/login_page.dart';
import '../widgets/app_button_field.dart';
import '../widgets/app_input_field.dart';
import 'index_page.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

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

              // mobile/email field
              const AppInputField(
                hintText: 'Your Name',
              ),

              const SizedBox(
                height: 20,
              ),

              // password field
              const AppInputField(
                hintText: 'Password',
                isPassword: true,
              ),

              const SizedBox(
                height: 20,
              ),

              // confirm password field
              const AppInputField(
                hintText: 'Confirm Password',
                isPassword: true,
                isLastFieldOnForm: true,
              ),

              const SizedBox(
                height: 20,
              ),

              // login link
              AppButtonField(
                text: 'Signup',
                onPress: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => const IndexPage(),
                  ));
                },
                color: const Color(0xff0B63E1),
                textColor: Colors.white,
              ),

              const SizedBox(
                height: 20,
              ),

              AppButtonField(
                text: 'Have an account? Login instead',
                onPress: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => const LoginPage(),
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

              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      )
    );
  }
}
