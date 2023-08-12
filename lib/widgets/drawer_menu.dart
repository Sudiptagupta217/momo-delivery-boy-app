import 'package:flutter/material.dart';
import 'package:it_momo_wala/ui/add_item_screen.dart';
import 'package:it_momo_wala/ui/auth/login_screen.dart';
import 'package:it_momo_wala/ui/profile_screen.dart';
import 'package:it_momo_wala/ui/sell_screen.dart';
import 'package:it_momo_wala/utils/default_colors.dart';

import '../ui/add_user_screen.dart';
import '../ui/user_list_screen.dart';

class DrawerMenu extends StatefulWidget {
  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  static const _whitePrimaryValue = 0xffffffff;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.65,
   //   backgroundColor: DefaultColor.white,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(40),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                DefaultColor.bg_color,
                Colors.blueGrey.shade900,
              ],
            ),
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(40))
        ),
        child: ListView(
          children: [

            Column(
              children:[
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    margin: EdgeInsets.only(left: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset(
                        'assets/images/user.jpg',fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Momo man",
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                      Text(
                        "johndoe@gmail.com",
                        style: TextStyle(fontSize: 11, color: Colors.white70),
                      ),
                      Text(
                        "9991112223",
                        style: TextStyle(fontSize: 11, color: Colors.white70),
                      ),
                    ],
                  ),
                ],
              ),
                SizedBox(height: 20,),

                Divider(),
        ]
            ),

            const SizedBox(height: 20,),

            InkWell(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => UserListScreen(),)),
              child: Container(
                height: 45,
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.account_circle_outlined,color: Colors.white),
                    SizedBox(width: 15,),
                    const Text('User',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white)),
                  ],
                ),
              ),
            ),




            // InkWell(
            //   onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => AddUserScreen(),)),
            //   child: Container(
            //     height: 45,
            //     child: Row(
            //       children: [
            //         SizedBox(width: 10,),
            //         Icon(Icons.manage_accounts_outlined,color: Colors.white),
            //         SizedBox(width: 15,),
            //         const Text('Add User',
            //             style: TextStyle(
            //                 fontSize: 16,
            //                 fontWeight: FontWeight.w500,
            //                 color: Colors.white)),
            //       ],
            //     ),
            //   ),
            // ),

            InkWell(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SellScreen(),)),
              child: Container(
                height: 45,
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.sell_outlined,color: Colors.white),
                    SizedBox(width: 15,),
                    const Text('Add Van Details',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white)),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),)),
              child: Container(
                height: 45,
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.logout_outlined,color: Colors.white),
                    SizedBox(width: 15,),
                    const Text('Log Out',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white)),
                  ],
                ),
              ),
            ),




          ],

        ),
      ),
    );
  }
}
