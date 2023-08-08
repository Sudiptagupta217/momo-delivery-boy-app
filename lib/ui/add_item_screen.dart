import 'package:flutter/material.dart';

import '../utils/default_colors.dart';
import '../widgets/buttom_manu.dart';
import '../widgets/custom_dropdown_filed.dart';

class AddItemScreen extends StatefulWidget {
  const AddItemScreen({super.key});

  @override
  State<AddItemScreen> createState() => _AddItemScreenState();
}

class _AddItemScreenState extends State<AddItemScreen> {


  late String _selectedbrand;

  List<String> brand = ['001', '002', '003', '004', '005'];


  @override
  void initState() {
    super.initState();
    _selectedbrand = brand[0];
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
      backgroundColor: DefaultColor.bg_color,

      bottomNavigationBar: BottomMenu(
        selectedIndex: selectedIndex,
        onClicked: onClicked,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.center,
                child: CustomDropdown(
                    text: "Select Van",
                    width: MediaQuery.of(context).size.width * 0.5,
                    selectedOption: _selectedbrand,
                    listname: brand,
                    dropdownColor: DefaultColor.bg_color,
                    bgcolor: DefaultColor.bg_color,
                    hintcolor: DefaultColor.white,
                    textColor: DefaultColor.white),
              ),

              SizedBox(height: 25,),

              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width*0.60,
                        child: Text("Steam Chicken Momo ",style: TextStyle(color: Colors.white,fontSize: 16),)),

                    Spacer(),

                    Container(
                      width: MediaQuery.of(context).size.width*0.2,
                      height: 40,
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                      //    hintText:  "enter your email",
                        //  hintStyle: TextStyle(color: Colors.white70,fontSize: 16,fontFamily: "Raleway",fontWeight: FontWeight.w600),
                          //prefixIcon: Icon(Icons.email_outlined,color: Colors.white,),

                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 1,
                              color: DefaultColor.white,),
                            borderRadius:  BorderRadius.circular( 5),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 1,
                              color: DefaultColor.white,),
                            borderRadius:  BorderRadius.circular(5),
                          ),

                          contentPadding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 10
                          ),
                        ),
                      ),
                    ),

                    Spacer(),

                  ],
                ),

              ),
              Divider(color: Colors.grey),

              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width*0.60,
                        child: Text("Steam Veg Momo ",style: TextStyle(color: Colors.white,fontSize: 16),)),

                    Spacer(),

                    Container(
                      width: MediaQuery.of(context).size.width*0.2,
                      height: 40,
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          //    hintText:  "enter your email",
                          //  hintStyle: TextStyle(color: Colors.white70,fontSize: 16,fontFamily: "Raleway",fontWeight: FontWeight.w600),
                          //prefixIcon: Icon(Icons.email_outlined,color: Colors.white,),

                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 1,
                              color: DefaultColor.white,),
                            borderRadius:  BorderRadius.circular( 5),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 1,
                              color: DefaultColor.white,),
                            borderRadius:  BorderRadius.circular(5),
                          ),

                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 10
                          ),
                        ),
                      ),
                    ),

                    Spacer(),

                  ],
                ),

              ),

              Divider(color: Colors.grey),

            ],
          ),
        ),
      ),
    );
  }
}
