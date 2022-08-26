import 'package:flutter/material.dart';
import 'package:mov/constants.dart';
import 'package:mov/view/onboarding/sign_up/components/customised_button.dart';
import 'package:mov/view/onboarding/sign_up/components/user_info.dart';

class EmailVerification extends StatelessWidget {
  const EmailVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kHorizontalPadding,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  const Icon(
                    Icons.email,
                    size: 25,
                    color: kPrimaryColor,
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Let\'s verify your email',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'RobotoSlab'),
                  ),
                  const SizedBox(height: 38),
                  RichText(
                    // textScaleFactor: 1.1,
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      style: TextStyle(fontSize: 16, color: Colors.black),
                      children: [
                        TextSpan(text: 'an code has been sent to\n'),
                        TextSpan(
                            text: 'derickAgendia@gmail.com\n',
                            style: TextStyle(
                              color: Color(0xffA68227),
                              fontWeight: FontWeight.w600,
                            )),
                        TextSpan(
                            text:
                                'please retrieve the code and fill in the\n filled Below'),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  TextField(
                    onChanged:(input){},
                    decoration: InputDecoration(
                      hintText: 'Enter verification code',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Wrong email? provide the correct one',
                          style:
                              TextStyle(color: Color(0xff173671), fontSize: 13),
                        )),
                  ),
                  CustomisedAuthButton(
                    text: 'Proceed',
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => UserInfo()));
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
