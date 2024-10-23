import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/Login/loginscreen.dart';
import 'package:whatsapp/Widgets/uihelper.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/onboard.png"), // Ensure this exists
            SizedBox(height: 20),
            UIHelper.CustomText(
                text: "Welcome To WhatsApp",
                height: 20,
                color: Color(0xff000000)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UIHelper.CustomText(text: "Read out", height: 14),
                UIHelper.CustomText(
                  text: " Privacy Policy.",
                  color: Color.fromRGBO(30, 144, 255, 1),
                  height: 14,
                ),
                UIHelper.CustomText(
                    text: " Tap 'Agree and Continue' ", height: 14),
              ],
            ),
            SizedBox(height: 5),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              UIHelper.CustomText(text: "to accept the terms ", height: 14),
              UIHelper.CustomText(
                  text: "Terms of Services",
                  height: 14,
                  color: Color.fromRGBO(30, 144, 255, 1)),
            ]),
          ],
        ),
      ),
      floatingActionButton: UIHelper.CustomButton(
        callback: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      LoginScreen())); // Updated Navigator with your custom button
        },
        buttonName: "Agree & Continue", // Custom Button name
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
