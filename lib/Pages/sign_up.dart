// ignore_for_file: prefer_const_constructors, camel_case_types, file_names, prefer_const_literals_to_create_immutables

import 'package:axon_eat/Pages/login_page.dart';
import 'package:axon_eat/Widgets/app_colors.dart';
import 'package:flutter/material.dart';

class Sign_up extends StatefulWidget {
  const Sign_up({super.key});

  @override
  State<Sign_up> createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.bgColor,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 200,
                ),
                SizedBox(
                  width: 77,
                  height: 29,
                  child: Text(
                    'Sign Up',
                    //textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(165, 255, 255, 255),
                        fontSize: 24,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 350,
                ),
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage())),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(173, 0, 129, 184),
                        borderRadius: BorderRadius.all(Radius.circular(38))),
                    width: 314,
                    height: 53,
                    child: SizedBox(
                      width: 65,
                      height: 22,
                      child: Center(
                        child: Text(
                          'Sign Up',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(227, 255, 255, 255),
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
          ),
        ));
  }
}
