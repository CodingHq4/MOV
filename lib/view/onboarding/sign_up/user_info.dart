import 'package:flutter/material.dart';
import 'package:mov/constants.dart';
import 'package:mov/view/main_screen/main_screen.dart';
import 'package:mov/view/onboarding/sign_up/components/customised_button.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kHorizontalPadding,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // SizedBox(height: 10),
                  SizedBox(height: size.height * 0.01),
                  const Icon(
                    Icons.email,
                    size: 25,
                    color: kPrimaryColor,
                  ),
                  // SizedBox(height: 10),
                  SizedBox(height: size.height * 0.015),
                  const Text(
                    'You are almost done',
                    style: kHeadingTextStyle,
                  ),
                  //SizedBox(height: 39),
                  SizedBox(height: size.height * 0.05),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.03,
                        vertical: size.height * 0.01,
                      ),
                      prefixIcon:
                          const Icon(Icons.person, color: kPrimaryColor),
                      hintText: 'Enter user name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  // SizedBox(height: 18),
                  SizedBox(height: size.height * 0.025),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.03,
                        vertical: size.height * 0.01,
                      ),
                      prefixIcon: const Icon(Icons.key, color: kPrimaryColor),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.remove_red_eye,
                            color: kPrimaryColor),
                      ),
                      hintText: 'Enter password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  // SizedBox(height: 18),
                  SizedBox(height: size.height * 0.025),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.03,
                        vertical: size.height * 0.01,
                      ),
                      prefixIcon: const Icon(Icons.key, color: kPrimaryColor),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.remove_red_eye,
                            color: kPrimaryColor),
                      ),
                      hintText: 'Enter password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  //SizedBox(height: 18),
                  SizedBox(height: size.height * 0.025),
                  CustomisedAuthButton(
                    text: 'Create account',
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainScreen()),
                          (Route route) => false);
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
