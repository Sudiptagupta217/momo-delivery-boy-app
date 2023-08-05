import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:it_momo_wala/utils/default_colors.dart';
import 'package:it_momo_wala/widgets/sell_widget.dart';

import '../bar_graph/bar_graph.dart';
import '../widgets/buttom_manu.dart';

class SellScreen extends StatefulWidget {
  const SellScreen({super.key});

  @override
  State<SellScreen> createState() => _SellScreenState();
}

class _SellScreenState extends State<SellScreen> {

  List<double> weeklySumary =[
    24.50,
    62.56,
    52.4,
    73.5,
    63.4,
    52.5,
    44.3
  ];


  var priceDetails = [
    {'images': 'assets/images/veg_momo.jpg', 'day': 'Monday', 'date': '31 june 2023',"totalchicken": "120","totalveg":"100", "totalprice":"Rs: 250", },
    {'images': 'assets/images/chicken_momo.jpg', 'day': 'Tuesday', 'date': '30 june 2023',"totalchicken": "120","totalveg":"100", "totalprice":"Rs: 350", },
    {'images': 'assets/images/veg_momo.jpg', 'day': 'Friday', 'date': '29 june 2023',"totalchicken": "120","totalveg":"100", "totalprice":"Rs: 240", },
    {'images': 'assets/images/chicken_momo.jpg', 'day': 'Monday', 'date': '27 june 2023',"totalchicken": "120","totalveg":"100", "totalprice":"Rs: 210", },
    {'images': 'assets/images/chicken_momo.jpg', 'day': 'Monday', 'date': '27 june 2023', "totalchicken": "120","totalveg":"100","totalprice":"Rs: 210", },
    {'images': 'assets/images/chicken_momo.jpg', 'day': 'Monday', 'date': '27 june 2023',"totalchicken": "120","totalveg":"100", "totalprice":"Rs: 210", },
    {'images': 'assets/images/veg_momo.jpg', 'day': 'Sunday', 'date': '25 june 2023', "totalchicken": "120","totalveg":"100","totalprice":"Rs: 200", },
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
           Container(
             padding: EdgeInsets.only(top: 5,bottom: 5,),
             color: Color(0xff464545),
             height: 180,

             child: MyBarGraph(weeklySummary: weeklySumary,),

           ),
            SizedBox(height: 10,),


            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(vertical: 5),
                shrinkWrap: true,
                 children: priceDetails.map((value){
                   return SellList(
                     image: value["images"].toString(),
                     day: value["day"].toString(),
                     date: value["date"].toString(),
                     totalchicken: value["totalchicken"].toString(),
                     totalveg: value["totalveg"].toString(),
                     amount: value["totalprice"].toString(),);

                 }
                 ).toList()
              ),
            )

          ],
        ),
      ),
    );
  }
}
