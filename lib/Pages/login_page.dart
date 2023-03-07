// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:axon_eat/Pages/home.dart';
import 'package:axon_eat/Widgets/app_colors.dart';
import 'package:flutter/material.dart';

import 'sign_up.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(38, 0, 38, 38),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SizedBox(
              height: 136,
            ),
            Center(
              child: SizedBox(
                width: 77,
                height: 29,
                child: Text(
                  'Log in',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(198, 255, 255, 255),
                      fontSize: 24,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            InkWell(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage())),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xff0080B8),
                    borderRadius: BorderRadius.all(Radius.circular(38))),
                width: 314,
                height: 53,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(135.5, 16, 114, 16),
                  child: SizedBox(
                    width: 65,
                    height: 22,
                    child: Text(
                      'Log in',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 17,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 88,
            ),
            Text(
              "Don't have an account?",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromARGB(183, 255, 255, 255),
                  fontSize: 14,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 16,
            ),
            InkWell(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Sign_up())),
              child: Text(
                "Sign up >",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromARGB(199, 255, 255, 255),
                    fontSize: 14,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
