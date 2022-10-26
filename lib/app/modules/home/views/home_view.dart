import 'package:bhattacharya/app/data/app_color.dart';
import 'package:bhattacharya/app/data/app_image.dart';
import 'package:bhattacharya/app/modules/home/utilities/dimensions.dart';
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
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          child: Column(
            children: [
              
               Container(
                height: 40,
                alignment: Alignment.center,
                width: Dimensions.screenWidth,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 155, 81, 230),
                  borderRadius: BorderRadius.circular(4),
                  // border: Border.all(width: 1,)
                ),
                          child: Text('Welcome to ABC',  style: TextStyle(
                              color: AppColor.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold), ),
                        ),
                        const SizedBox(height: 2,),
                        
              Banner(
                message: 'message ',
                color: AppColor.logoColor,
                location: BannerLocation.bottomStart,
                child: Container(
                  color: AppColor.bg,
                  width: Dimensions.screenWidth,
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                    child: Column(
                      children: <Widget>[

                       
                         Text(
                          'XYZ',
                          style: TextStyle(
                              color: AppColor.common,
                              fontSize: 40,
                              fontWeight: FontWeight.bold), //TextStyle
                        ),
                        const SizedBox(
                          height: 5,
                        ), //SizedBox
                         Text(
                          'New User here  !!',
                          style: TextStyle(
                              color: AppColor.common,
                              fontSize: 20,
                              fontWeight: FontWeight.bold), //TextStyle
                        ), //Text
                        const SizedBox(height: 20),
                      ], //<Widget>[]
                    ), //Column
                  ), //Padding
                ), //Container
              ), 
              _buildKyc(),
              _buildContent(
                'Platform News',
                'Rohan Shekar',
                'bina takkar',
                'sumina khan',
              ),
    const SizedBox(height: 10,),
     _buildContent(
      'New Recommedations' ,
                'bhj thakur',
                'nima kakkar',
                'sabina khan',
                
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Obx(
                    () => Text(
                        _networkController.connectionStatus.value == 0
                            ? ' No Internet Connection'
                            : '',
                        style: const TextStyle(color: Colors.red, fontSize: 15)),
                  ),
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
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
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
  _buildContent(String name,String t1, String t2, String t3,  ){
    return Container(
      height: 150,
      width: Dimensions.screenWidth,
      decoration: BoxDecoration(
        color: AppColor.grey,
        border: Border.all(width: 1, color: Colors.black26),
        borderRadius: BorderRadius.circular(7)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(name,  style: const TextStyle(
                              // color: AppColor.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                              const SizedBox(height: 5,),
          Text(t1,  style: TextStyle(
                              color: AppColor.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w300
                            )),
          // Divider(color: AppColor.white, thickness: 1.3,),
          Text(t2, style: TextStyle(
                              color: AppColor.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w300
                            )),
          Text(t3, style: TextStyle(
                              color: AppColor.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w300
                            )),
         
          
        ],
      ),
    );
  }
}
