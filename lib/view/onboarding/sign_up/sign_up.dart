import 'package:flutter/material.dart';
import 'package:mov/constants.dart';
import 'package:mov/view/onboarding/sign_up/components/customised_button.dart';
import 'package:mov/view/onboarding/sign_up/email_verification.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kHorizontalPadding,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 98),
                SizedBox(
                    height: 26,
                    width: 39,
                    child: Image.asset('images/img.png')),
                const SizedBox(height: 10),
                Text(
                  'Welcome to MOV',
                  style: kSignupHeadingTextStyle.copyWith(color: Colors.black),
                ),
                const Text('Let\'s get to know you',
                    style: kSignupHeadingTextStyle),
                const SizedBox(height: 45),
                Container(
                  height: 58,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: const Color(0xff217FEE),
                  ),
                  child: Row(
                    children: [
                      const Expanded(child: const SizedBox()),
                      SizedBox(
                        height: 23,
                        width: 24,
                        child: Image.asset('images/img_1.png'),
                      ),
                      const SizedBox(width: 19),
                      const Text(
                        'Sign in with Google',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      const Expanded(child: SizedBox()),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                const Text('Or', style: TextStyle(fontSize: 16)),
                const SizedBox(height: 15),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                const SizedBox(height: 19),
                CustomisedAuthButton(
                  text: 'Proceed',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EmailVerification()));
                  },
                ),
                const SizedBox(height: 17),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Already have an acount',
                    style: TextStyle(
                      color: Color(0xff9F8541),
                      fontWeight: FontWeight.w700,
                    ),
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
