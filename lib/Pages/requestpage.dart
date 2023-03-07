// ignore_for_file: prefer_const_constructors

import 'package:axon_eat/Widgets/app_colors.dart';
import 'package:axon_eat/Widgets/bottomnavbar.dart';
import 'package:flutter/material.dart';

class RequestPage extends StatefulWidget {
  const RequestPage({super.key});

  @override
  State<RequestPage> createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Text('Request')),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}