import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:it_momo_wala/ui/add_item_screen.dart';
import 'package:it_momo_wala/ui/home_screen.dart';
import 'package:it_momo_wala/utils/default_colors.dart';


import '../widgets/buttom_manu.dart';
import '../widgets/vanlist_widget.dart';

class SellScreen extends StatefulWidget {
  const SellScreen({super.key});

  @override
  State<SellScreen> createState() => _SellScreenState();
}

class _SellScreenState extends State<SellScreen> {

  // List<double> weeklySumary =[
  //   24.50,
  //   62.56,
  //   52.4,
  //   73.5,
  //   63.4,
  //   52.5,
  //   44.3
  // ];


  bool _isClicked = false;

  void _toggleClicked() {
    setState(() {
      _isClicked = !_isClicked;
    });
  }


  var priceDetails = [
    {
     // 'images': 'assets/images/veg_momo.jpg',
      'vanNum': 'V01',
      'location': 'Dumdum road',
    //  "totalchicken": "120",
    //  "totalveg": "100",
      "totalprice": "2250",
    },
    {
     // 'images': 'assets/images/chicken_momo.jpg',
      'vanNum': 'V02',
      'location': 'VIP Road',
     // "totalchicken": "120",
    //  "totalveg": "100",
      "totalprice": "3350",
    },
    {
     // 'images': 'assets/images/veg_momo.jpg',
      'vanNum': 'V03',
      'location': 'Sbi Ecorner',
   //   "totalchicken": "120",
    //  "totalveg": "100",
      "totalprice": "240",
    },
    {
     // 'images': 'assets/images/chicken_momo.jpg',
      'vanNum': 'V04',
      'location': 'Dumdum Station',
    //  "totalchicken": "120",
    //  "totalveg": "100",
      "totalprice": "210",
    },
    {
      //'images': 'assets/images/chicken_momo.jpg',
      'vanNum': 'V05',
      'location': 'Dumdum road',
    //  "totalchicken": "120",
    //  "totalveg": "100",
      "totalprice": "2210",
    },
    {
      //'images': 'assets/images/chicken_momo.jpg',
      'vanNum': 'V06',
      'location': 'VIP Road',
    //  "totalchicken": "120",
    //  "totalveg": "100",
      "totalprice": "2210",
    },
    {
     // 'images': 'assets/images/veg_momo.jpg',
      'vanNum': 'V07',
      'location': 'dumdum Kolkata',
    //  "totalchicken": "120",
    //  "totalveg": "100",
      "totalprice": "12003",
    },
  ];

  int selectedIndex = 1;

  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black, // Replace with your desired color
    ));

    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
      bottomNavigationBar: BottomMenu(
        selectedIndex: selectedIndex,
        onClicked: onClicked,
      ),
      body: SafeArea(
        child: Column(
          children: [
          // Container(
          //   padding: EdgeInsets.only(top: 5,bottom: 5,),
          //   color: Color(0xff464545),
          //   height: 180,
          //
          //   child: MyBarGraph(weeklySummary: weeklySumary,),
          //
          // ),
          //  SizedBox(height: 10,),


          Container(
          height: 60,
          color: Color(0x93262626),
          child: Row(
            children:  [

              SizedBox(width: 40,),

            Spacer(),

            Text("Van List",style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.w600)),
            Spacer(),


            InkWell(
                onTap:() {
                  _showPopup(context);
                },
                child: SizedBox(
                height: 40,
                width: 40,
                child: Icon(Icons.add, color: Colors.white,)),
          ),


          ],
        ),
      ),

      Expanded(
        child: ListView(
            physics: const BouncingScrollPhysics(),
            // padding: EdgeInsets.symmetric(vertical: 5),
            shrinkWrap: true,
            children: priceDetails.map((value) {
              return InkWell(
                onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (context) => AddItemScreen(vanNo: value["vanNum"].toString()),)),
                child: VanList(
                  image: 'assets/images/veg_momo.jpg',
                  vanNumber: value["vanNum"].toString(),
                  vanlocation: value['location'].toString(),
                 // totalchicken: value["totalchicken"].toString(),
                 // totalveg: value["totalveg"].toString(),
                  amount: value["totalprice"].toString(),

                ),
              );
            }
            ).toList()
        ),
      )

      ],
    ),)
    ,
    );
  }


  void _showPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add New Van'),
          content: Container(
            height: 110,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText:  "Enter Van Number",
                    hintStyle: TextStyle(color: Colors.black87,fontSize: 16,fontFamily: "Raleway",fontWeight: FontWeight.w500),
                  ),
                ),

                SizedBox(height: 10,),

                TextFormField(
                  decoration: InputDecoration(
                    hintText:  "Enter Van Location",
                    hintStyle: TextStyle(color: Colors.black87,fontSize: 16,fontFamily: "Raleway",fontWeight: FontWeight.w500),
                  ),
                ),

              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the popup
              },
              child: Text('ADD'),
            ),
          ],
        );
      },
    );
  }
}
