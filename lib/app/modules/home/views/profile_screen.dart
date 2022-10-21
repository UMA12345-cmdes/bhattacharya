
import 'package:bhattacharya/app/modules/home/views/team/my_team.dart';
import 'package:flutter/material.dart';

import '../../../data/app_color.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
             DrawerHeader(
              decoration: BoxDecoration(
                color: AppColor.logoColor,
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: AppColor.logoColor),
                accountName: const Text(
                  "Abhishek Mishra",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: const Text("abhishekm977@gmail.com"),
                currentAccountPictureSize: const Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: AppColor.slashColor,
                  child:  Text(
                    "A",
                    style: TextStyle(fontSize: 30.0, color: AppColor.logoColor),
                  ), //Text
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ), //DrawerHeader
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' My Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text(' My Team '),
              onTap: () {
                Navigator.push(context,
            MaterialPageRoute(builder: (context) =>  const MyTeam()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: const Text(' My Earning '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_label),
              title: const Text(' Withdrawal Amount '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
             ListTile(
              leading: const Icon(Icons.calendar_month),
              title: const Text('Monthly Statement'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
             ListTile(
              leading: const Icon(Icons.lock_person),
              title: const Text('change Password'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
           const SizedBox(height: 130,),
           
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('LogOut'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ), //Deawer
    
             
    );
  }
}