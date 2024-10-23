import 'package:flutter/material.dart';
import 'package:whatsapp/Widgets/uihelper.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneController = TextEditingController();
  String selectedCountry = "India"; // Initial selected value
  List<String> countries = [
    "India", // Added India to the list
    "Australia", // Fixed spelling
    "Germany",
    "Canada",
    "Russia",
    "Japan",
    "Italy",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 80),
          Center(
            child: UIHelper.CustomText(
                text: "Enter Your Phone Number",
                height: 20,
                color: Color(0XFF00A884),
                fontweight: FontWeight.bold),
          ),
          SizedBox(height: 30),
          UIHelper.CustomText(
            text: "WhatsApp will need to verify your Phone",
            height: 16,
          ),
          UIHelper.CustomText(
            text: "number. Carrier charges may apply.",
            height: 16,
          ),
          UIHelper.CustomText(
            text: "What's my number?",
            height: 16,
            color: Color(0XFF00A884),
          ),
          SizedBox(height: 50),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 55), // Balanced padding
            child: DropdownButtonFormField<String>(
              items: countries.map((String country) {
                return DropdownMenuItem<String>(
                  child: Text(country),
                  value: country,
                );
              }).toList(),
              onChanged: (String? newvalue) {
                // Specify String? type for newvalue
                setState(() {
                  if (newvalue != null) {
                    selectedCountry = newvalue;
                  }
                });
              },
              value: selectedCountry,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0XFF00A884)),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0XFF00A884)),
                ),
                labelText: "Select Country",
                labelStyle: TextStyle(color: Color(0XFF00A884)),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center, // Align vertically
            children: [
              SizedBox(
                width: 40,
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 1), // Adjust padding as needed
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "+91",
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF00A884)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF00A884)),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF00A884)),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              SizedBox(
                width: 250,
                child: TextField(
                  controller: phoneController,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFF00A884)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton:
          UIHelper.CustomButton(callback: () {}, buttonName: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
