// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ChangePass extends StatelessWidget {
  const ChangePass({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Form(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
                // labelText: 'Current Password',
                hintText: 'Current Password',
                border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 21,
          ),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
                // labelText: 'Current Password',
                hintText: 'New Password',
                border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 21,
          ),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
                // labelText: 'Current Password',
                hintText: 'Confirm New Password',
                border: OutlineInputBorder()),
          ),
        ],
      )),
    );
  }
}
