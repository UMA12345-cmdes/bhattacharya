import 'package:bhattacharya/app/data/app_color.dart';
import 'package:flutter/material.dart';

class MyTeam extends StatelessWidget {
  const MyTeam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColor.bg,
      body: SafeArea(
          child: SingleChildScrollView(
        child: _buildTeam(),
      )),
    );
  }
  _buildTeam(){
    return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text('My Team', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
              ),
              const SizedBox(height: 20,),
             
              Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            '[36279884-83443] ' "  " 'ABC',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, color: AppColor.black),
                          ),
               const SizedBox(height: 10,),

                          const Text('KYC Status '" : "'KYC OK'),
                          const Text('Repurchase Amount : 0'),
                          const Text('P.V. : 0')
                        ],
                      ),
                      const Icon(Icons.person_add_alt_1_outlined)
                    ],
                  ),
                ),
              ),
             Card(
              elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                       const Icon(Icons.person_add_alt_1_outlined),
                      Padding(
                        padding: const EdgeInsets.only(right: 100),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              '[36349550-8435] ' "  " 'XYZ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, color: AppColor.black),
                            ),
               const SizedBox(height: 10,),

                            const Text('KYC Status '" : "'KYC OK'),
                            const Text('Repurchase Amount : 0'),
                            const Text('P.V. : 0')
                          ],
                        ),
                      ),
                     
                      const Icon(Icons.keyboard_arrow_right)
                    ],
                  ),
                ),
              ),

             Card(
              elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                       const Icon(Icons.person_add_alt_1_outlined),
                      Padding(
                        padding: const EdgeInsets.only(right: 100),
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              '[363649550-9283] ' "  " ' MNO',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, color: AppColor.black),
                            ),
               const SizedBox(height: 10,),

                            const Text('KYC Status '" : "'KYC OK'),
                            const Text('Repurchase Amount : 0'),
                            const Text('P.V. : 0')
                          ],
                        ),
                      ),
                     
                      const Icon(Icons.keyboard_arrow_right)
                    ],
                  ),
                ),
              ),
              
            ],
          ),
        );
  }
}
