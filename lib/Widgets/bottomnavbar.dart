// ignore_for_file: unused_field, prefer_const_constructors

import 'package:axon_eat/Pages/home.dart';
import 'package:axon_eat/Pages/notifcationpage.dart';
import 'package:axon_eat/Pages/profilepage.dart';
import 'package:axon_eat/Pages/requestpage.dart';
import 'package:axon_eat/Widgets/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final List<Widget> pages = const [
    HomePage(),
    RequestPage(),
    ProfilePage(),
    NotificationsPAge()
  ];
  //int selectedPage = 0;
  int selectedIndex = 0;
  void onTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      backgroundColor: AppColors.bgColor,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        child: ClipRRect(
          child: GNav(
            onTabChange: onTap,
            selectedIndex: selectedIndex,
            tabBorderRadius: 10,
            backgroundColor: Color.fromARGB(219, 68, 71, 72),
            color: AppColors.textColor,
            activeColor: AppColors.textColor,
            tabBackgroundColor: Colors.grey.shade800,
            gap: 8,
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.shopping_basket_outlined,
                text: 'Request',
              ),
              GButton(
                icon: Icons.person_2_sharp,
                text: 'Profile',
              ),
              GButton(
                icon: Icons.notifications_on_outlined,
                //iconColor: AppColors.textColor,
                text: 'Notifications',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
