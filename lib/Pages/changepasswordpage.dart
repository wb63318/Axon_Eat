// ignore_for_file: prefer_const_constructors

import 'package:axon_eat/Widgets/app_colors.dart';
import 'package:flutter/material.dart';

import '../Widgets/changepasswordForm.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
          child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            'Change Password',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: AppColors.textColor,
                fontFamily: 'Montserrat'),
          ),
          Text(
              "Your password must be at least six characters and should iclude a combination of numbers ,letters and special characters",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Montserrat,',
                  fontSize: 16,
                  color: AppColors.textColor)),
                  SizedBox(height: 45,),
                  ChangePass(),
        ],
      )),
    );
  }
}
