import 'package:bhattacharya/app/data/app_color.dart';
import 'package:flutter/material.dart';

class MyTeam extends StatelessWidget {
  const MyTeam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'My Team',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: CircleAvatar(
                radius: 20,
                child: Icon(Icons.person),
              ),
            ),
            Container(
              width: 2,
              color: AppColor.textColor,
              height: 40,
            ),
            Container(
              width: 279,
              color: AppColor.textColor,
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      width: 2,
                      color: AppColor.textColor,
                      height: 40,
                    ),
                    const CircleAvatar(
                      radius: 20,
                      child: Icon(Icons.person),
                    ),
                    Container(
                      width: 2,
                      color: AppColor.textColor,
                      height: 40,
                    ),
                    Container(
                      width: 80,
                      color: AppColor.textColor,
                      height: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 2,
                              color: AppColor.textColor,
                              height: 40,
                            ),
                            const CircleAvatar(
                              radius: 20,
                              child: Icon(Icons.person),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 2,
                              color: AppColor.textColor,
                              height: 40,
                            ),
                            const CircleAvatar(
                              radius: 20,
                              child: Icon(Icons.person),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 2,
                              color: AppColor.textColor,
                              height: 40,
                            ),
                            const CircleAvatar(
                              radius: 20,
                              child: Icon(Icons.person),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 2,
                      color: AppColor.textColor,
                      height: 40,
                    ),
                    const CircleAvatar(
                      radius: 20,
                      child: Icon(Icons.person),
                    ),
                    Container(
                      width: 2,
                      color: AppColor.textColor,
                      height: 40,
                    ),
                    Container(
                      height: 2,
                      color: AppColor.textColor,
                      width: 80,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 2,
                              color: AppColor.textColor,
                              height: 40,
                            ),
                            const CircleAvatar(
                              radius: 20,
                              child: Icon(Icons.person),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 2,
                              color: AppColor.textColor,
                              height: 40,
                            ),
                            const CircleAvatar(
                              radius: 20,
                              child: Icon(Icons.person),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 2,
                              color: AppColor.textColor,
                              height: 40,
                            ),
                            const CircleAvatar(
                              radius: 20,
                              child: Icon(Icons.person),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 2,
                      color: AppColor.textColor,
                      height: 40,
                    ),
                    const CircleAvatar(
                      radius: 20,
                      child: Icon(Icons.person),
                    ),
                    Container(
                      width: 2,
                      color: AppColor.textColor,
                      height: 40,
                    ),
                    Container(
                      height: 2,
                      color: AppColor.textColor,
                      width: 80,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 2,
                              color: AppColor.textColor,
                              height: 40,
                            ),
                            const CircleAvatar(
                              radius: 20,
                              child: Icon(Icons.person),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 2,
                              color: AppColor.textColor,
                              height: 40,
                            ),
                            const CircleAvatar(
                              radius: 20,
                              child: Icon(Icons.person),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 2,
                              color: AppColor.textColor,
                              height: 40,
                            ),
                            const CircleAvatar(
                              radius: 20,
                              child: Icon(Icons.person),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
