import 'package:flutter/material.dart';
import 'package:it_momo_wala/ui/home_screen.dart';
import 'package:it_momo_wala/utils/default_colors.dart';

class BottomMenu extends StatelessWidget {
  final selectedIndex;
  ValueChanged<int> onClicked;
  BottomMenu({this.selectedIndex, required this.onClicked});

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: const BoxDecoration(
        color: Color(0xffeef2f3),
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
              backgroundColor: Color(0xFFFFFFFF),
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.numbers),
              label: 'Shop ',
              backgroundColor: Color(0xFFFFFFFF),
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.numbers),
              label: 'Wallet',
              backgroundColor: Color(0xFFFFFFFF),
            ),


            BottomNavigationBarItem(
              icon: Icon(Icons.numbers),
              label: 'Profile',
              backgroundColor: Color(0xFFFFFFFF),
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
                Navigator.pushNamed(context, "/shop_now");
                break;
              case 2:
                onClicked;
                Navigator.pushNamed(context, "/wallet");
                break;
                case 3:
                onClicked;
                Navigator.pushNamed(context, "/profile");
                break;
            }
          },
        ),
      ),
    );
  }
}
