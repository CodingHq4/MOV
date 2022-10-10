import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mov/constants.dart';

class LocationDetails extends StatelessWidget {
  const LocationDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: kHorizontalPadding,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: height * 0.02),
            const Text(
              'You are planing a trip to Douala',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: height * 0.05),
            const Text(
              'Where will your business meeting take place ?',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: height * 0.018),
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.03,
                  vertical: size.height * 0.001,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: height * 0.05),
            const Text(
              'When will the meeting date place ?',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: height * 0.018),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: size.width * 0.4,
                    child: TextField(
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(15),
                      ],
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.03,
                            vertical: size.height * 0.001,
                          ),
                          hintText: 'mm/dd/yr',
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                          )),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.4,
                    child: TextField(
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(10),
                      ],
                      textAlign: TextAlign.center,
                      scrollPhysics: NeverScrollableScrollPhysics(),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.03,
                            vertical: size.height * 0.001,
                          ),
                          hintText: '-- : -- ',
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.05),
            const Text(
              'When will you return home',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: height * 0.018),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: size.width * 0.4,
                    child: TextField(
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(15),
                      ],
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.03,
                            vertical: size.height * 0.001,
                          ),
                          hintText: 'mm/dd/yr',
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                          )),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.4,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
