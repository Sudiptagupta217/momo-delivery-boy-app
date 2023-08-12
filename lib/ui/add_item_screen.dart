import 'package:flutter/material.dart';
import 'package:it_momo_wala/ui/sell_screen.dart';
import 'package:it_momo_wala/widgets/round_button.dart';

import '../utils/default_colors.dart';
import '../widgets/buttom_manu.dart';
import '../widgets/custom_dropdown_filed.dart';
import '../widgets/item_add_text_widget.dart';

class AddItemScreen extends StatefulWidget {

  final String vanNo;

  const AddItemScreen({Key? key,
  required this.vanNo,
  }):super(key: key);

  @override
  State<AddItemScreen> createState() => _AddItemScreenState();
}

class _AddItemScreenState extends State<AddItemScreen> {


  late String _selectedPosition;

  List<String> positionNo = ['1', '2', '3', '4', '5','6','7','8'];


  @override
  void initState() {
    super.initState();
    _selectedPosition = positionNo[0];
  }


  int selectedIndex = 1;
  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomMenu(
        selectedIndex: selectedIndex,
        onClicked: onClicked,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    DefaultColor.bg_color,
                    Colors.blueGrey.shade900,
                  ],
                )
            ),

            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),

                // Align(
                //   alignment: Alignment.center,
                //   child: CustomDropdown(
                //       text: "Select Van",
                //       width: MediaQuery.of(context).size.width * 0.5,
                //       selectedOption: _selectedbrand,
                //       listname: brand,
                //       dropdownColor: DefaultColor.bg_color,
                //       bgcolor: DefaultColor.bg_color,
                //       hintcolor: DefaultColor.white,
                //       textColor: DefaultColor.white),
                // ),

              //  SizedBox(height: 25,),

                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      border: Border.all(color: Color(0x2d4d4646), width: 1.4)
                      //BorderSide(color: Color(0x00F6F6F6), width: 1.4)

                    ),
                      child: Center(child: Text("Selected Van : "+widget.vanNo,style: TextStyle(color: Colors.white,fontSize: 17)))),
                ),

                SizedBox(height: 20,),

                AddItemtextWidget(title: "Steam Chicken Momo",available: "2",PositionNo: positionNo, selectedPosition: _selectedPosition),
                Divider(),
                AddItemtextWidget(title: "Steam Veg Momo",available: "2",PositionNo: positionNo, selectedPosition: _selectedPosition),
                Divider(),
                AddItemtextWidget(title:"Fried Chicken Momo" ,available: "12", PositionNo: positionNo, selectedPosition: _selectedPosition),
                Divider(),
                AddItemtextWidget(title: "Fried Veg Momo",available: "5",PositionNo: positionNo, selectedPosition: _selectedPosition),
                Divider(),
                AddItemtextWidget(title: "Rost Chicken Momo",available: "3",PositionNo: positionNo, selectedPosition: _selectedPosition),
                Divider(),
                AddItemtextWidget(title: "Rost Veg Momo",available: "2",PositionNo: positionNo, selectedPosition: _selectedPosition),
                Divider(),
                AddItemtextWidget(title: "Pan Fried Chicken Momo",available: "1",PositionNo: positionNo, selectedPosition: _selectedPosition),
                Divider(),
                AddItemtextWidget(title: "Pan Fried Veg Momo",available: "2",PositionNo: positionNo, selectedPosition: _selectedPosition),
                Divider(),

                SizedBox(height: 20,),

               RoundButton(
                   title: "Add Item",
                   color: DefaultColor.delault_color,
                   style: TextStyle(color: Colors.white,fontSize: 17),
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder:  (context) => SellScreen(),));
                   }),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
