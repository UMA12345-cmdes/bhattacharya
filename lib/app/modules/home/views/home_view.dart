import 'package:bhattacharya/app/data/app_color.dart';
import 'package:bhattacharya/app/data/app_image.dart';
import 'package:bhattacharya/app/modules/home/views/profile_screen.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

// ignore: must_be_immutable
class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:const Drawer(
       child: ProfileScreen()
      ),
      appBar: AppBar(
        backgroundColor: AppColor.logoColor,
        title: Container(
          color: Colors.white,
          child: Image(
                  image: Image.asset(AppImage.logo).image,
                  height: 40,
                  width: 50,
                ),
        ),
      ),
      body:  SingleChildScrollView(
        child: SafeArea(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const[
                  Text('36279884'),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                   Text('Welcome, abc '),
                  Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                   Text('Re-Purchase Month : October'),
                  Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                   Text('Re-Purchase Amount : 0'),
                  Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                   Text('Re-Purchase P.V. : 0'),
                SizedBox(height: 20,)

                ],
              ),
            )),
      ),
    );
  }
}
