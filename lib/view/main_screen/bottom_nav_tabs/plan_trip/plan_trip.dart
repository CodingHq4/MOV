import 'package:flutter/material.dart';
import 'package:mov/constants.dart';
import 'package:mov/view/main_screen/bottom_nav_tabs/plan_trip/plan_a_trip/plan_a_trip.dart';
import 'package:mov/view/onboarding/sign_up/components/customised_button.dart';

class PlanTrip extends StatefulWidget {
  const PlanTrip({Key? key}) : super(key: key);

  @override
  State<PlanTrip> createState() => _PlanTripState();
}

class _PlanTripState extends State<PlanTrip> {
  final TextEditingController _controller = TextEditingController();

  bool _proceedButtonVisible = false;

  void visibilityToggle() {
    if (_controller.text.isNotEmpty) {
      setState(() => _proceedButtonVisible = true);
    } else {
      setState(() => _proceedButtonVisible = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: size.height * 0.09),
          const Text(
            'Hello Derek',
            style: kHeadingTextStyle,
          ),
          SizedBox(height: size.height * 0.016),
          const Text(
            'Where is business taking you today',
            style: TextStyle(color: Color(0xff6C6C6C), fontSize: 18),
          ),
          SizedBox(height: size.height * 0.055),
          TextField(
            onChanged: (input) {
              visibilityToggle();
            },
            controller: _controller,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: size.width * 0.03,
                vertical: size.height * 0.01,
              ),
              hintText: 'Enter your destination',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
          Visibility(
            visible: _proceedButtonVisible,
            child: Padding(
              padding: EdgeInsets.only(top: size.height * 0.04),
              child: CustomisedAuthButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PlanATrip()));
                },
                text: 'Proceed',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
