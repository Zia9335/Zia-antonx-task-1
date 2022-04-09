import 'package:flutter/material.dart';
import 'package:w1/Components/components.dart';

import 'package:w1/Components/constants.dart';
import 'package:w1/Screens/newscreen.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xffFFFFFF),
          body: Padding(
            padding: const EdgeInsets.only(left: 25.0,top: 10.0,bottom: 25,right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const IconButton(
                  padding: EdgeInsets.only(left: 0.0),
                  onPressed: null,
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: darkGreen,
                  ),
                ),
                const SizedBox(
                  height: 100.0,
                ),
                const Text(
                  "Log in to Muz",
                  style: TextStyle(
                    fontFamily: "Times New Roman",
                    fontSize: 20.0,
                    color: darkGreen,
                    fontWeight: FontWeight.w900,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 25.0,
                ),
                const Text(
                  "Email address",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: textFieldColor,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const CustomTextField(
                  textMessage: "Enter your email",
                ),
                const SizedBox(
                  height: 25.0,
                ),
                const Text(
                  "Password",
                  style: TextStyle(
                    fontFamily: "Times New Roman",
                    fontSize: 15.0,
                    color: textFieldColor,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const CustomTextField(
                  textMessage: "Enter password",
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
                const SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){return NewScreenHome();}));
                  },
                  child: Container(

                    width: double.infinity,
                    height: 55,
                    child: const Center(
                      child: Text("Log in",style: TextStyle(
                          fontSize: 20.0
                      ),),
                    ),
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFCC99),
                      borderRadius:  BorderRadius.all(Radius.circular(8.0),),),
                  ),
                ),
              ],
            ),
          ),
        ),);
  }
}
