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
  final PageController _pageController = PageController();
  final PageController _textController = PageController();
  int activePage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
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
              Container(color: kPrimaryColor),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: size.height * 0.65,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Color(0xff000000).withOpacity(0.85),
                  ],
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 43, horizontal: 18),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: size.height * 0.2,
                      width: size.width,
                      child: PageView(
                        physics: NeverScrollableScrollPhysics(),
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
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignUp()));
                                },
                                title: 'Get started',
                              )
                            : CustomisedButton(
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
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
