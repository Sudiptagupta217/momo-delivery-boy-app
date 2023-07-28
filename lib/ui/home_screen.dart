import 'package:flutter/material.dart';
import 'package:it_momo_wala/utils/default_colors.dart';

import '../widgets/buttom_manu.dart';
import '../widgets/item_widget.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<Map<String, dynamic>> itemDataList = [
    {
      'itemName': 'Veg Momo',
      'imagePath': "assets/images/veg_momo.jpg",
      'totalPlates': 10.0.toDouble(),
      'sellItem': 0.0.toDouble(), 
      'residueItem': 10.0.toDouble(),
      'itemNameColor': Colors.green.shade700,
    },
    {
      'itemName': 'Chicken Momo',
      'imagePath': "assets/images/momo1.png",
      'totalPlates': 15.0.toDouble(),
      'sellItem': 0.0.toDouble(), 
      'residueItem': 15.0.toDouble(),
      'itemNameColor': Colors.green.shade700,
    },
    {
      'itemName': '1/2 Veg Momo',
      'imagePath': "assets/images/veg_momo.jpg",
      'totalPlates': 10.0.toDouble(),
      'sellItem': 0.0.toDouble(), 
      'residueItem': 10.0.toDouble(),
      'itemNameColor': Colors.green.shade700,
    },

    {
      'itemName': ' 1/2 Chicken Momo',
      'imagePath': "assets/images/momo.jpg",
      'totalPlates': 60.0.toDouble(), 
      'sellItem': 0.0.toDouble(), 
      'residueItem': 60.0.toDouble(), 
      'itemNameColor': Colors.green.shade700,
    },

    {
      'itemName': ' 1/2 Chicken Momo',
      'imagePath': "assets/images/momo.jpg",
      'totalPlates': 60.0.toDouble(),
      'sellItem': 0.0.toDouble(),
      'residueItem': 60.0.toDouble(),
      'itemNameColor': Colors.green.shade700,
    },

  ];

  int selectedIndex = 0;
  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  bool showText = false;
  void toggleText() {
    setState(() {
      showText = !showText;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

     backgroundColor:  Color(0xffeef2f3),

      bottomNavigationBar: BottomMenu(
        selectedIndex: selectedIndex,
        onClicked: onClicked,
      ),

      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              height: 220,
              decoration: const BoxDecoration(
                color: DefaultColor.delault_color,
                 borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Container(
                      margin: EdgeInsets.only(top: 45),
                      width: double.infinity,
                      height: 55,
                      child: Image.asset("assets/images/logo_mini.png",fit: BoxFit.fitHeight,)),

                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20,top: 20),
                        child: CircularPercentIndicator(
                          radius: 35.0,
                          lineWidth: 5.0,
                          percent: 0.79,
                          center:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(50)),
                                  child: Container(
                                    height: 57,
                                    width: 57,
                                      child: Image.asset("assets/images/man.jpg",fit: BoxFit.cover,)))
                            ],),
                          progressColor: Colors.yellow.shade500,
                          backgroundColor: Colors.transparent,
                        ),
                      ),

                      SizedBox(width: 10,),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20,),
                          Text("User Name",style: TextStyle(color: DefaultColor.white,fontSize: 20,fontWeight: FontWeight.w600,fontFamily: "Raleway"),),
                          Text("description",style: TextStyle(color: DefaultColor.white,fontSize: 13,fontWeight: FontWeight.w500,fontFamily: "Poppins"),),
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Total: ",style: TextStyle(color: DefaultColor.white,fontSize: 13,fontWeight: FontWeight.w500,fontFamily: "Poppins"),),


                              GestureDetector(
                                onTap: toggleText,
                                  child: Text(showText ? "Rs. 1000" : '*****',style: TextStyle(color: DefaultColor.white,fontSize: 13,fontWeight: FontWeight.w500,fontFamily: "Poppins"),)),


                            ],
                          ),
                        ],
                      )
                    ],
                  ),

                ],
              ),
            ),

            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                decoration: const BoxDecoration(
                    color: Color(0xffeef2f3),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25)),
                ),
                child: GridView.count(
                  crossAxisCount: 2,
                  physics: BouncingScrollPhysics(),
                  childAspectRatio: 0.87,
                  shrinkWrap: true,
                  controller: new ScrollController(keepScrollOffset: false),
                  children: itemDataList.map<Widget>((itemData) {


                    return ItemWidget(
                      itemName: itemData['itemName'],
                      itemImage: itemData['imagePath'],
                      totalPlates: itemData['totalPlates'],
                      sellItem: itemData['sellItem'],
                      residueItem: itemData['residueItem'],
                      itemNameColor: itemData['itemNameColor'],
                      callback: () {
                        setState(() {
                          itemData['sellItem']++;
                          itemData['residueItem']--;
                        });
                      },
                      onLongPress: () {
                        setState(() {
                          itemData['sellItem']--;
                          itemData['residueItem']++;
                        });
                      },
                    );
                  }).toList(),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
