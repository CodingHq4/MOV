import 'package:flutter/material.dart';
import 'package:mov/constants.dart';
import 'package:mov/view/onboarding/sign_up/components/customised_button.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({Key? key}) : super(key: key);

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
                  SizedBox(height: 10),
                  const Text(
                    'You are almost done',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'RobotoSlab'),
                  ),
                  SizedBox(height: 39),
                  TextField(
                    decoration: InputDecoration(
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
                  SizedBox(height: 18),
                  TextField(
                    decoration: InputDecoration(
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
                  SizedBox(height: 18),
                  TextField(
                    decoration: InputDecoration(
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
                  SizedBox(height: 18),
                  CustomisedAuthButton(
                    text: 'Proceed',
                    onPressed: () {},
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
