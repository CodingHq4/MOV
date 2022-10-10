import 'package:flutter/material.dart';
import 'package:mov/constants.dart';
import 'package:mov/view/onboarding/intro_screen/components/customised_button.dart';
import 'package:mov/view/onboarding/intro_screen/components/customised_dot.dart';
import 'package:mov/view/onboarding/sign_up/sign_up.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);
  @override
  State createState() => _IntroScreenState();
}

class _IntroScreenState extends State {
  PageController _pageController = PageController();
  PageController _textController = PageController();
  int activePage = 0;
  @override
  void initState() {
    _pageController = PageController();
    _textController = PageController();
    activePage = 0;

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              physics: const NeverScrollableScrollPhysics(),
              onPageChanged: (int pageNumber) {
                setState(() => activePage = pageNumber);
              },
              controller: _pageController,
              children: [
                Image.asset(
                  'images/intro_img.png',
                  fit: BoxFit.fill,
                ),
                Image.asset(
                  'images/intro_img1.png',
                  fit: BoxFit.fill,
                ),
                Container(
                  color: kPrimaryColor,
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 444,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      const Color(0xff000000).withOpacity(1),
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const SizedBox(height: 43),
                      SizedBox(
                        height: 160,
                        width: size.width,
                        child: PageView(
                          physics: const NeverScrollableScrollPhysics(),
                          controller: _textController,
                          children: const [
                            Text(
                              'All the Services your need\n for a successful\n Business trip',
                              textAlign: TextAlign.center,
                              style: kIntroTextStyle,
                            ),
                            Text(
                              'The travelling Services\n with a true VIP\n experience',
                              textAlign: TextAlign.center,
                              style: kIntroTextStyle,
                            ),
                            Text(
                              'Bringing you all the facilities\n to make your trip memorable',
                              textAlign: TextAlign.center,
                              style: kIntroTextStyle,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: 75,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomisedDot(
                                color: activePage == 0
                                    ? kPrimaryColor
                                    : Colors.white),
                            CustomisedDot(
                                color: activePage == 1
                                    ? kPrimaryColor
                                    : Colors.white),
                            CustomisedDot(
                                color: activePage == 2
                                    ? kPrimaryColor
                                    : Colors.white),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          activePage == 0
                              ? CustomisedButton(
                                  textColor: Colors.black,
                                  buttonColor: kPrimaryColor,
                                  title: 'Skip',
                                  onPressed: () {
                                    if (_pageController.hasClients) {
                                      _pageController.animateToPage(
                                        2,
                                        duration:
                                            const Duration(milliseconds: 400),
                                        curve: Curves.easeInOut,
                                      );
                                    }
                                    if (_textController.hasClients) {
                                      _textController.animateToPage(
                                        2,
                                        duration:
                                            const Duration(milliseconds: 400),
                                        curve: Curves.easeInOut,
                                      );
                                    }
                                  },
                                )
                              : CustomisedButton(
                                  textColor: Colors.black,
                                  buttonColor: kPrimaryColor,
                                  title: 'Back',
                                  onPressed: () {
                                    if (_textController.hasClients) {
                                      _textController.previousPage(
                                        duration:
                                            const Duration(milliseconds: 400),
                                        curve: Curves.easeInOut,
                                      );
                                    }
                                    if (_pageController.hasClients) {
                                      _pageController.previousPage(
                                        duration:
                                            const Duration(milliseconds: 400),
                                        curve: Curves.easeInOut,
                                      );
                                    }
                                  },
                                ),
                          activePage == 2
                              ? CustomisedButton(
                                  textColor: Colors.black,
                                  buttonColor: kPrimaryColor,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SignUp()));
                                  },
                                  title: 'Get started',
                                )
                              : CustomisedButton(
                                  textColor: Colors.black,
                                  buttonColor: kPrimaryColor,
                                  onPressed: () {
                                    if (_textController.hasClients) {
                                      _textController.nextPage(
                                        duration:
                                            const Duration(milliseconds: 400),
                                        curve: Curves.easeInOut,
                                      );
                                    }
                                    if (_pageController.hasClients) {
                                      _pageController.nextPage(
                                        duration:
                                            const Duration(milliseconds: 400),
                                        curve: Curves.easeInOut,
                                      );
                                    }
                                  },
                                  title: 'Next',
                                ),
                        ],
                      ),
                      SizedBox(height: size.height * 0.06),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
