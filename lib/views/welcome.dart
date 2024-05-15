// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.17,
      width: MediaQuery.of(context).size.width,
      child: Text(
        "Hey, \nwhat's up Junaid",
        style: TextStyle(
          fontFamily: 'Pacifico',
          fontSize: 40,
          color: Color(0xff2E3678),
        )
      ),
    );
  }
}