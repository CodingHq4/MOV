import 'package:flutter/material.dart';
import 'package:mov/constants.dart';

class Reservations extends StatelessWidget {
  const Reservations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: kHorizontalPadding,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height * 0.02),
            const Text(
              'You are planing a trip to Douala',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: height * 0.06),
            Card(
              elevation: 8,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: size.height * 0.015),
                child: ListTile(
                  leading: const Icon(
                    Icons.maps_home_work_outlined,
                    color: kSecondaryColor,
                  ),
                  title: const Text('Select a hotel for your lodging'),
                  onTap: () {
                    showModalBottomSheet(
                        elevation: 8,
                        context: context,
                        builder: (context) => Container());
                  },
                ),
              ),
            ),
            const SizedBox(height: 8),
            Card(
              elevation: 8,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: size.height * 0.015),
                child: ListTile(
                  leading: const Icon(
                    Icons.emoji_transportation,
                    color: kSecondaryColor,
                  ),
                  title: const Text('Select urban transport service'),
                  onTap: () {
                    showModalBottomSheet(
                        elevation: 8,
                        context: context,
                        builder: (context) => Container());
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
