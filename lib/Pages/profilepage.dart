// ignore_for_file: prefer_const_constructors

import 'package:axon_eat/Widgets/app_colors.dart';
import 'package:axon_eat/Widgets/bottomnavbar.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Cancel and Done Buttons with Page Title "Edit Profile"
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(
                              AppColors.textColor)),
                      onPressed: () {},
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 17,
                            fontWeight: FontWeight.w700),
                      )),
                  Text(
                    'Edit Profile',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(
                              AppColors.textColor)),
                      onPressed: () {},
                      child: Text(
                        'Done',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 17,
                            fontWeight: FontWeight.w700),
                      ))
                ],
              ),

              //Profile Avatar/Image
              SizedBox(
                width: 100,
                height: 100,
                //decoration: BoxDecoration(borderRadius: BorderRadius.circular(radius)),
                child: Image.asset(
                  'assets/images/profileavatar.jpg',
                  fit: BoxFit.fill,
                ),
              ),

              //Edit Profile Picture Button
              Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextButton(
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(
                              AppColors.textColor)),
                      onPressed: () {},
                      child: Text(
                        'Done',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 12,
                            fontWeight: FontWeight.w700),
                      ))),

              //Dark/Light Mode Toggle Button

              //Container for Edit Profile Menu

              Container(
                width: 315,
                height: 304,
                margin: EdgeInsets.only(left: 37, right: 38),
                color: AppColors.menubgColor,
                child: Column(
                  children: [
                    //Change Password area
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: const [
                          Icon(
                            Icons.password_outlined,
                            color: AppColors.textColor,
                            size: 10,
                          ),
                          Text('Change Account Password'),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.arrow_right_alt,
                            size: 20,
                            color: AppColors.textColor,
                          )
                        ],
                      ),
                    ),
                    Divider(
                      height: 2,
                      color: AppColors.dividerColor,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
