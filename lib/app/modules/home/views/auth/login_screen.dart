import 'package:bhattacharya/app/data/app_image.dart';
import 'package:bhattacharya/app/modules/home/utilities/dimensions.dart';
import 'package:bhattacharya/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../../../../data/app_color.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  var passwordController = TextEditingController();
  var userId = TextEditingController();
  var refralCode = TextEditingController();

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bg,
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 240, right: 20),
        child: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.arrow_forward),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 28),
              child: Center(
                child: Image(
                  image: Image.asset(AppImage.animated).image,
                  height: Dimensions.screenHeight / 2.2,
                  width: MediaQuery.of(context).size.width / 1.2,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: Dimensions.screenHeight / 2.3,
              decoration: BoxDecoration(
                color: AppColor.white,
                border: Border.all(
                    width: 2,
                    color: AppColor.white,
                    style: BorderStyle.solid), //Border.all
                borderRadius: const BorderRadius.all(
                  Radius.circular(25),
                ), //BorderRadius.all
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Welcome',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColor.black,
                        fontSize: 30),
                  ),
                  Form(
                    key: formKey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 25),
                      child: TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        onSaved: (value) {
                          emailController.text = value!;
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return (" Enter valid  Email Id");
                          }
                          // reg expression for email validation
                          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                              .hasMatch(value)) {
                            return ("Please Enter a valid email");
                          }
                          return null;
                        },
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.mail,
                              color: Colors.black54,
                            ),
                            fillColor: AppColor.white,
                            filled: true,
                            border: const OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1.2,
                                color: AppColor.grey,
                              ),
                            ),
                            hintText: "   Enter Your Email Id",
                            hintStyle: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.normal)),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: AppColor.common,
                          style: BorderStyle.solid), //Border.all
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ), //BorderRadius.all
                    ),
                    // ignore: deprecated_member_use
                    child: ElevatedButton(
                        onPressed: () {
                          Get.defaultDialog(
                            title: 'Login',
                            barrierDismissible: false,
                            content: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: TextFormField(
                                    controller: userId,
                                    onSaved: (value) {
                                      userId.text = value!;
                                    },
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return ("Please Enter Your user id");
                                      }
                                      return null;
                                    },
                                    textInputAction: TextInputAction.next,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.white,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                            Dimensions.borderRadius12),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            Dimensions.borderRadius12),
                                      ),
                                      hintText: "Enter Your User Id",
                                      prefixIcon: const Icon(Icons.sms),
                                      fillColor: Colors.grey[100],
                                      filled: true,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    obscureText: true,
                                    controller: passwordController,
                                    onSaved: (value) {
                                      passwordController.text = value!;
                                    },
                                    textInputAction: TextInputAction.done,
                                    validator: (value) {
                                      RegExp regex = RegExp(r'^.{6,}$');
                                      if (value!.isEmpty) {
                                        return ("Password is required for login");
                                      }
                                      if (!regex.hasMatch(value)) {
                                        return ("Enter Valid Password(Min. 6 Character)");
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(Icons.lock),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.white,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                            Dimensions.borderRadius12),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(),
                                        borderRadius: BorderRadius.circular(
                                            Dimensions.borderRadius12),
                                      ),
                                      hintText: "password",
                                      fillColor: Colors.grey[100],
                                      filled: true,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    controller: refralCode,
                                    keyboardType: TextInputType.phone,
                                    onSaved: (value) {
                                      refralCode.text = value!;
                                    },
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return ("Please Enter Your Refral Code");
                                      }
                                      return null;
                                    },
                                    textInputAction: TextInputAction.next,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.white,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                            Dimensions.borderRadius12),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            Dimensions.borderRadius12),
                                      ),
                                      prefixIcon: const Icon(Icons.numbers),
                                      hintText: "Enter Refral Code",
                                      fillColor: Colors.grey[100],
                                      filled: true,
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      if (formKey.currentState!.validate()) {
                                        userId.text;
                                        refralCode.text;
                                        passwordController.text;
                                      }
                                      Fluttertoast.showToast(
                                        webShowClose: true,
                                        gravity: ToastGravity.CENTER_RIGHT,
                                        backgroundColor: AppColor.common,
                                        toastLength: Toast.LENGTH_LONG,
                                        fontSize: 18,
                                        timeInSecForIosWeb: 10,
                                        msg: 'Successfully Login');
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  HomeView()));
                                    },
                                    child: const Text('Login'))
                              ],
                            ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Text(
                              'Get Started',
                              style: TextStyle(fontSize: 20),
                            ),
                            Icon(Icons.arrow_forward),
                          ],
                        )),
                        
                  ),
                ],
              ),
            ),

          ],
        )),
      ),
    );
  }

  // _buildDialogBox() {
  // return Get.defaultDialog(
  //   title: 'Login',
  //   barrierDismissible: false,
  //   content: Container(
  //     height: Dimensions.screenHeight/2.2,
  //     width: Dimensions.screenWidth,
  //     child: Form(
  //       key: formKey,
  //       child: Column(
  //         children: [
  //           Padding(
  //             padding: const EdgeInsets.all(10.0),
  //             child: TextFormField(
  //               controller: userId,
  //               onSaved: (value) {
  //                 userId.text = value!;
  //               },
  //               validator: (value) {
  //                 if (value!.isEmpty) {
  //                   return ("Please Enter Your user id");
  //                 }
  //                 return null;
  //               },
  //               textInputAction: TextInputAction.next,
  //               decoration: InputDecoration(
  //                 enabledBorder: OutlineInputBorder(
  //                   borderSide: const BorderSide(
  //                     color: Colors.white,
  //                   ),
  //                   borderRadius: BorderRadius.circular(Dimensions.borderRadius12),
  //                 ),
  //                 focusedBorder: OutlineInputBorder(
  //                   borderRadius: BorderRadius.circular(Dimensions.borderRadius12),
  //                 ),
  //                 hintText: "Enter Your User Id",
  //                 fillColor: Colors.grey[100],
  //                 filled: true,
  //               ),
  //             ),
  //           ),
  //           Padding(
  //             padding: const EdgeInsets.all(10.0),
  //             child: TextFormField(
  //               obscureText: true,
  //               controller: passwordController,
  //               onSaved: (value) {
  //                 passwordController.text = value!;
  //               },
  //               textInputAction: TextInputAction.done,
  //               validator: (value) {
  //                 RegExp regex = RegExp(r'^.{6,}$');
  //                 if (value!.isEmpty) {
  //                   return ("Password is required for login");
  //                 }
  //                 if (!regex.hasMatch(value)) {
  //                   return ("Enter Valid Password(Min. 6 Character)");
  //                 }
  //                 return null;
  //               },
  //               decoration: InputDecoration(
  //                 enabledBorder: OutlineInputBorder(
  //                   borderSide: const BorderSide(
  //                     color: Colors.white,
  //                   ),
  //                   borderRadius: BorderRadius.circular(Dimensions.borderRadius12),
  //                 ),
  //                 focusedBorder: OutlineInputBorder(
  //                   borderSide: BorderSide(),
  //                   borderRadius: BorderRadius.circular(Dimensions.borderRadius12),
  //                 ),
  //                 hintText: "password",
  //                 fillColor: Colors.grey[100],
  //                 filled: true,
  //               ),
  //             ),
  //           ),
  //           Padding(
  //             padding: const EdgeInsets.all(10.0),
  //             child: TextFormField(
  //               controller: refralCode,
  //               keyboardType: TextInputType.phone,
  //               onSaved: (value) {
  //                 refralCode.text = value!;
  //               },
  //               validator: (value) {
  //                 if (value!.isEmpty) {
  //                   return ("Please Enter Your Refral Code");
  //                 }
  //                 return null;
  //               },
  //               textInputAction: TextInputAction.next,
  //               decoration: InputDecoration(
  //                 enabledBorder: OutlineInputBorder(
  //                   borderSide: const BorderSide(
  //                     color: Colors.white,
  //                   ),
  //                   borderRadius:
  //                       BorderRadius.circular(Dimensions.borderRadius12),
  //                 ),
  //                 focusedBorder: OutlineInputBorder(
  //                   borderRadius:
  //                       BorderRadius.circular(Dimensions.borderRadius12),
  //                 ),
  //                 hintText: "Enter Refral Code",
  //                 fillColor: Colors.grey[100],
  //                 filled: true,
  //               ),
  //             ),
  //           ),
  //           ElevatedButton(onPressed: () {
  //              if (formKey.currentState!.validate()) {
  //               userId.text;
  //               refralCode.text;
  //               passwordController.text;
  //               Navigator.of(context).pushReplacement(
  //                 MaterialPageRoute(
  //                   builder: (context)=> HomeView()))
  //              }

  //           }, child: Text('Login'))
  //         ],
  //       ),
  //     ),
  //   ),
  // );
  // }
}
