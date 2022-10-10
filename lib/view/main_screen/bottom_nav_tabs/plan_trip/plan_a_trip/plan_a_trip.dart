import 'package:flutter/material.dart';
import 'package:mov/constants.dart';
import 'package:mov/view/main_screen/bottom_nav_tabs/plan_trip/plan_a_trip/Reservations.dart';
import 'package:mov/view/main_screen/bottom_nav_tabs/plan_trip/plan_a_trip/location_details.dart';
import 'package:mov/view/main_screen/bottom_nav_tabs/plan_trip/plan_a_trip/summary.dart';
import 'package:mov/view/onboarding/intro_screen/components/customised_button.dart';
import 'package:mov/view/onboarding/intro_screen/components/customised_dot.dart';

class PlanATrip extends StatefulWidget {
  PlanATrip({Key? key}) : super(key: key);

  @override
  State<PlanATrip> createState() => _PlanATripState();
}

class _PlanATripState extends State<PlanATrip> {
  PageController _pageController = PageController();

  int _activePage = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Plan a Trip',
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),
        ),
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back_ios_new,
            size: 21,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _pageController,
                onPageChanged: (int index) {
                  setState(() => _activePage = index);
                },
                scrollDirection: Axis.horizontal,
                children: const [
                  LocationDetails(),
                  Reservations(),
                  Summary(),
                ],
              ),
            ),
            Column(
              //mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(height: 4),
                SizedBox(
                  width: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomisedDot(
                          color: _activePage == 0
                              ? const Color(0xff544242)
                              : kSecondaryColor),
                      CustomisedDot(
                          color: _activePage == 1
                              ? const Color(0xff544242)
                              : kSecondaryColor),
                      CustomisedDot(
                          color: _activePage == 2
                              ? const Color(0xff544242)
                              : kSecondaryColor),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.05),
                Padding(
                  padding: kHorizontalPadding,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomisedButton(
                        onPressed: () {
                          if (_activePage == 0) {
                            Navigator.pop(context);
                          } else if (_pageController.hasClients) {
                            _pageController.previousPage(
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeInOut,
                            );
                          }
                        },
                        title: 'Back',
                        textColor: Colors.white,
                        buttonColor: Colors.black,
                      ),
                      CustomisedButton(
                        textColor: Colors.white,
                        buttonColor: Colors.black,
                        onPressed: () {
                          if (_pageController.hasClients) {
                            _pageController.nextPage(
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.slowMiddle,
                            );
                          }
                        },
                        title: 'Proceed',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 4),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
