import 'package:flutter/material.dart';
import 'package:w1/CustomWidgets/custom_widgets.dart';

import 'package:w1/Components/constants.dart';
import 'package:w1/Screens/screen_first.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kScaffoldColor,
        body: Padding(
          padding: const EdgeInsets.only(
              left: 25.0, top: 10.0, bottom: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const IconButton(
                padding: EdgeInsets.only(left: 0.0),
                onPressed: null,
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: kDarkGreen,
                ),
              ),
              const Spacer(),
              const Text(
                "Log in to Muz",
                style: TextStyle(
                  fontFamily: "Times New Roman",
                  fontSize: 20.0,
                  color: kDarkGreen,
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 25.0,
              ),
              const Text(
                "Email address",
                style: kLogInLabelStyle,
              ),
              const SizedBox(
                height: 10.0,
              ),
              const CustomTextField(
                textInputType: TextInputType.emailAddress,
                hintText: "Enter your email",
              ),
              const Text(
                "Password",
                style: kLogInLabelStyle,
              ),
              const SizedBox(
                height: 10.0,
              ),
              const CustomTextField(
                obscureText: true,
                hintText: "Enter password",
              ),
              const TextButton(
                onPressed: null,
                child: Text(
                  "Forgot password?",
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              const Spacer(),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orangeAccent.shade100),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScreenFirst(),
                    ),
                  );
                },
                child:const Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20,right: 20,top: 15,bottom: 15),
                    child:  Text(
                      'Log In',
                      style: kElevatorButtonTextStyle,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
