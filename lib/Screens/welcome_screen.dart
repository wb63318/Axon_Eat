// ignore_for_file: prefer_const_constructors

import 'package:axon_eat/Pages/login_page.dart';
import 'package:axon_eat/Pages/sign_up.dart';
import 'package:axon_eat/Widgets/app_colors.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // SizedBox(height: 130),
            Padding(
              padding: const EdgeInsets.fromLTRB(95, 100, 84, 22),
              child: SizedBox(
                width: 211,
                height: 35,
                child: Text(
                  "Totally Axonic",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 28,
                    fontStyle: FontStyle.normal,
                    color: Color(0xffDEFFF2),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 22,
            ),
            //Image

            ClipRRect(
              child: Image.asset('assets/images/preview2.jpg',
                  fit: BoxFit.contain),
            ),
            SizedBox(
              height: 59,
            ),
            //Login Button
            InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage())),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xff0080B8),
                    borderRadius: BorderRadius.all(Radius.circular(38))),
                width: 268,
                height: 53,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(103, 13, 110, 19),
                  child: SizedBox(
                    width: 55,
                    height: 21,
                    child: Text(
                      'Log in',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromARGB(209, 255, 255, 255),
                          fontSize: 17,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            //Sign Up Button
            InkWell(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Sign_up())),
              child: Container(
                decoration: BoxDecoration(
                    //color: Color(0xff7C90A0),
                    border: Border.all(color: AppColors.buttonColor, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(38))),
                width: 268,
                height: 53,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(101, 13, 100, 19),
                  child: SizedBox(
                    width: 67,
                    height: 21,
                    child: Text(
                      'Sign Up',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
