import 'package:flutter/material.dart';
import 'package:it_momo_wala/ui/add_user_screen.dart';
import 'package:it_momo_wala/widgets/user_cart.dart';

import '../utils/default_colors.dart';

class UserListScreen extends StatefulWidget {
  const UserListScreen({super.key});

  @override
  State<UserListScreen> createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {

  var userlist=[
  {
  "images": "assets/images/user.jpg",
  "name": "Anil kumar Dey",
  "phoneno": "9999999999",
  "vanno": "v01"
  },
    {
      "images": "assets/images/user.jpg",
      "name": "Arnab kar",
      "phoneno": "9999999999",
      "vanno": "v01"
    },
    {
      "images": "assets/images/user.jpg",
      "name": "Anil kumar Dey",
      "phoneno": "9567854322",
      "vanno": "v03"
    },
    {
      "images": "assets/images/user.jpg",
      "name": "Anil kumar Dey",
      "phoneno": "6769999999",
      "vanno": "v01"
    },
    {
      "images": "assets/images/user.jpg",
      "name": "kumar Dey",
      "phoneno": "4599999999",
      "vanno": "v04"
    },
    {
      "images": "assets/images/user.jpg",
      "name": "Anil Dey",
      "phoneno": "9745399999",
      "vanno": "v05"
    },
    {
      "images": "assets/images/user.jpg",
      "name": "Anil Dey",
      "phoneno": "9745399999",
      "vanno": "v06"
    },
    {
      "images": "assets/images/user.jpg",
      "name": "Anil kumar Dey",
      "phoneno": "9999999999",
      "vanno": "v01"
    },
    {
      "images": "assets/images/user.jpg",
      "name": "Arnab kar",
      "phoneno": "9999999999",
      "vanno": "v01"
    },
    {
      "images": "assets/images/user.jpg",
      "name": "Anil kumar Dey",
      "phoneno": "9567854322",
      "vanno": "v03"
    },
    {
      "images": "assets/images/user.jpg",
      "name": "Anil kumar Dey",
      "phoneno": "6769999999",
      "vanno": "v01"
    },
    {
      "images": "assets/images/user.jpg",
      "name": "kumar Dey",
      "phoneno": "4599999999",
      "vanno": "v04"
    },
    {
      "images": "assets/images/user.jpg",
      "name": "Anil Dey",
      "phoneno": "9745399999",
      "vanno": "v05"
    },
    {
      "images": "assets/images/user.jpg",
      "name": "Anil Dey",
      "phoneno": "9745399999",
      "vanno": "v06"
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [

              SizedBox(height: 10,),
              Container(
                height: 30,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("User List",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w600),),
                    Spacer(),
                    InkWell(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => AddUserScreen(),)),
                        child: Text("Add User",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w600),))
                  ],
                ),
              ),
              SizedBox(height: 10,),

              Expanded(
                child: ListView(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    children: userlist.map((value) {
                      return UserCart(
                          image: Image.asset(value['images'].toString()),
                          name: value["name"].toString(),
                          phoneNo: value['phoneno'].toString(),
                          vanNo:value['vanno'].toString(),
                      );
                    }).toList()),
              ),
            ],
          ),
        ),
        )
    );
  }
}
