import 'package:flutter/material.dart';
import 'package:it_momo_wala/ui/home_screen.dart';
import 'package:it_momo_wala/ui/profile_screen.dart';
import 'package:it_momo_wala/utils/default_colors.dart';

import '../ui/earning_screen.dart';
import '../ui/sell_screen.dart';

class BottomMenu extends StatelessWidget {
  final selectedIndex;
  ValueChanged<int> onClicked;
  BottomMenu({this.selectedIndex, required this.onClicked});

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: const BoxDecoration(
        color: Color(0xff2a2929),
        // boxShadow: [
        //   BoxShadow(
        //       color: Color(0xffDDDDDD),
        //       blurRadius: 10,
        //       spreadRadius: 0,
        //      ),
        // ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),

        ),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[

            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Color(0xff1a1a1a),
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.sell_outlined),
              label: 'Sell ',
              backgroundColor: Color(0xff1a1a1a),
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.wallet_rounded),
              label: 'Earning',
              backgroundColor: Color(0xff1a1a1a),
            ),


            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Profile',
              backgroundColor: Color(0xff1a1a1a),
            )


          ],
          currentIndex: selectedIndex,
          selectedItemColor: DefaultColor.delault_color,
          unselectedItemColor: Color(0xFF9C9C9C),
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w500,fontFamily: "Poppins",fontSize: 13),



          onTap: (index){
            switch(index){
              case 0:
                onClicked;
               // Navigator.pushNamed(context, "/");
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                break;
              case 1:
                onClicked;
                Navigator.push(context, MaterialPageRoute(builder: (context) => SellScreen(),));
                break;
              case 2:
                onClicked;
                Navigator.push(context, MaterialPageRoute(builder: (context) => EarningScreen(),));
                break;
                case 3:
                onClicked;
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen(),));
                break;
            }
          },
        ),
      ),
    );
  }
}
