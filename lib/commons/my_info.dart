import 'package:flutter/material.dart';
import 'package:dating_ui/commons/radial_progress.dart';
import 'package:dating_ui/commons/rounded_image.dart';
import 'package:dating_ui/styleguide/text_style.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({super.key});

  void _showEnlargedImage(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Center(
          child: Container(
            color: Colors.black,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              "assets/images/hayat2.jpg", // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          _showEnlargedImage(context);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RadialProgress(
              width: 5,
              goalCompleted: 0.8,
              child: RoundedImage(
                imagePath:
                    "assets/images/hayat.jpg", // Replace with your image path
                size: Size.fromWidth(100.0), // Adjust the size as needed
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hayat',
                  style: whiteNameTextStyle,
                ),
                Text(
                  ', 32',
                  style: whiteNameTextStyle,
                )
              ],
            ),
            SizedBox(
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/icons/location_pin.png",
                  width: 20.0,
                  color: Colors.white,
                ),
                Text(
                  "34 Kilometer",
                  style: whiteSubHeadingTextStyle,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
