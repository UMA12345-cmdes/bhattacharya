import 'package:bhattacharya/app/data/app_color.dart';
import 'package:bhattacharya/app/data/app_image.dart';
import 'package:bhattacharya/app/modules/home/views/profile_screen.dart';
import 'package:bhattacharya/app/modules/network/controller/network_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

// ignore: must_be_immutable
class HomeView extends GetView<HomeController> {
  final NetworkController _networkController = Get.find<NetworkController>();

  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(child: ProfileScreen()),
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
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //     const Text('36279884'),
              //      const Divider(
              //   color: Colors.grey,
              //   thickness: 1,
              // ),
              //       const Text('Welcome, abc '),
              //      const Divider(
              //   thickness: 1,
              //   color: Colors.grey,
              // ),
              //       const Text('Re-Purchase Month : October'),
              //      const Divider(
              //   thickness: 1,
              //   color: Colors.grey,
              // ),
              //       const Text('Re-Purchase Amount : 0'),
              //      const Divider(
              //   thickness: 1,
              //   color: Colors.grey,
              // ),
              //       const Text('Re-Purchase P.V. : 0'),
              //    const SizedBox(height: 100 * 4,),
              _buildKyc(),
              Center(
                child: Obx(
                  () => Text(
                      _networkController.connectionStatus.value == 0
                          ? ' No Internet Connection'
                          : ' ',
                      style: const TextStyle(color: Colors.red, fontSize: 15)),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }

  _buildKyc() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 130,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 155, 81, 230),
              border: Border.all(
                  width: 2,
                  color: AppColor.white,
                  style: BorderStyle.solid), //Border.all
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ), //Bor
            ),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const[
                  Text(
                    'Wallet Balance ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  Text('Rs. 11.34',  style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w600),),
                  Text('Unclaimed Amount',  style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 2,
                      color: AppColor.white,
                      style: BorderStyle.solid), //Border.all
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ), //Bor
                  color: const Color.fromARGB(255, 248, 110, 59),
                ),
                height: 55,
                width: 220,
                child: const Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  child: Text('Team Income',  style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 238, 140, 42),
                  border: Border.all(
                      width: 2,
                      color: AppColor.white,
                      style: BorderStyle.solid), //Border.all
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ), //Bor
                ),
                height: 55,
                width: 220,
                child: const Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 15, horizontal: 60),
                  child: Text('Withdrawal',  style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
