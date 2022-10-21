import 'dart:async';

import 'package:bhattacharya/app/data/app_color.dart';
import 'package:bhattacharya/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';

class SlashScreen extends StatefulWidget {
  const SlashScreen({Key? key}) : super(key: key);

  @override
  State<SlashScreen> createState() => _SlashScreenState();
}

class _SlashScreenState extends State<SlashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 8),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) =>  HomeView())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.slashColor,
      body: Center(
        child: Image(image: Image.asset('assets/images/SPLASH lOGO.png').image,
        height: 170,
        width: 150,
        ),
      ),
    );
  }
}
