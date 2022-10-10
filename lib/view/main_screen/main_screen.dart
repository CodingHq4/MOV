import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mov/constants.dart';
import 'package:mov/view/main_screen/bottom_nav_tabs/plan_trip/plan_trip.dart';
import 'package:mov/view/main_screen/bottom_nav_tabs/profile/profile.dart';
import 'package:mov/view/main_screen/bottom_nav_tabs/tickets/tickets.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentNavIndex = 0;
  void changeNavIndex(index) {
    setState(() => currentNavIndex = index);
  }

  List<Widget> bottomNavTabs = [
    const PlanTrip(),
    const Tickets(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 25),
            child: Icon(
              Icons.notifications,
              color: Color(0xffA68227),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: kHorizontalPadding,
          child: bottomNavTabs[currentNavIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.cartFlatbedSuitcase,
                size: 20,
              ),
              label: 'Plan Trip'),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.ticket,
              size: 20,
            ),
            label: 'Tickets',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedLabelStyle: const TextStyle(fontSize: 14),
        unselectedLabelStyle: const TextStyle(fontSize: 12),
        backgroundColor: kSecondaryColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: kPrimaryColor,
        currentIndex: currentNavIndex,
        onTap: changeNavIndex,
      ),
    );
  }
}
