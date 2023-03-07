// ignore_for_file: prefer_const_constructors

import 'package:axon_eat/Widgets/app_colors.dart';
import 'package:axon_eat/Widgets/bottomnavbar.dart';
import 'package:flutter/material.dart';

class NotificationsPAge extends StatefulWidget {
  const NotificationsPAge({super.key});

  @override
  State<NotificationsPAge> createState() => _NotificationsPAgeState();
}

class _NotificationsPAgeState extends State<NotificationsPAge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SafeArea(child: Text('Notifications')),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
