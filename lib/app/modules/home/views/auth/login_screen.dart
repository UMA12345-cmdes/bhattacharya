import 'package:bhattacharya/app/data/app_image.dart';
import 'package:bhattacharya/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';

import '../../../../data/app_color.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Image(
                image: Image.asset(AppImage.logo).image,
                height: 150,
                width: 120,
              ),
            ),
            Center(
              child: Image(
                image: Image.asset('assets/images/Success 1.png').image,
                height: 330,
                width: 400,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 25),
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
                    border: const OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2.2,
                        color: AppColor.textColor,
                      ),
                    ),
                    hintText: "Enter Your Email Id",
                    hintStyle: TextStyle(
                        fontSize: 18,
                        color: AppColor.textColor,
                        fontWeight: FontWeight.normal)),
              ),
            ),
            Container(
              height: 45,
              width: 160,
              decoration: BoxDecoration(
                  border: Border.all(width: 2.2, color: AppColor.textColor)),
              // ignore: deprecated_member_use
              child: RaisedButton(
                  color: AppColor.white,
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeView()));
                  },
                  child: const Text(
                    'Get Started',
                    style: TextStyle(fontSize: 20),
                  )),
            )
          ],
        )),
      ),
    );
  }
}
