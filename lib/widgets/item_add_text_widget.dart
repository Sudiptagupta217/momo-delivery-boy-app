import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:it_momo_wala/widgets/custom_switch.dart';

import '../utils/default_colors.dart';
import 'custom_dropdown_filed.dart';

class AddItemtextWidget extends StatefulWidget {
  final String title;
  final List<String> PositionNo;
  String selectedPosition;

  AddItemtextWidget({
    Key? key,
    required this.title,
    required this.PositionNo,
    required this.selectedPosition,
  }) : super(key: key);

  @override
  State<AddItemtextWidget> createState() => _AddItemtextWidgetState();
}

class _AddItemtextWidgetState extends State<AddItemtextWidget> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {


    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Container(
            width: 35,
            child: DropdownButtonFormField<String>(
              decoration: InputDecoration(border: InputBorder.none),
              //hint: Text(""),
              value: null,
              onChanged: (String? newValue) {
                setState(() {
                  widget.selectedPosition = newValue!;
                });
              },
              dropdownColor: DefaultColor.bg_color,
              elevation: 0,
              icon: Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
              ),
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
              // underline: Container(),
              items: widget.PositionNo.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item, style: TextStyle(color: Colors.white)),
                );
              }).toList(),
            ),
          ),
          Container(
              width: MediaQuery.of(context).size.width * 0.45,
              child: Text(
                widget.title,
                style: TextStyle(color: Colors.white, fontSize: 16),
              )),
          Spacer(),
          CustomSwitch(
            value: isSwitched,
          ),
          Spacer(),

          InkWell(
            onTap: () {
                  _showDetailsPopup(context);
              },

            child: Container(
                width: MediaQuery.of(context).size.width * 0.2,
                height: 40,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  colors: [
                    DefaultColor.bg_color,
                    Colors.blueGrey.shade900,
                  ], ),
                //  border: Border.all(width: 0.1, color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade800,
                      offset: Offset(1, 2),
                      spreadRadius: 1,
                      blurRadius: 1
                    )
                  ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text(
                  "Available",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.w400)),

                    Text(
                      "12",
                      style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                    ),
                  ],
                )

                // TextFormField(
                //   style: const TextStyle(color: Colors.white),
                //   keyboardType: TextInputType.number,
                //   inputFormatters: <TextInputFormatter>[
                //     FilteringTextInputFormatter.digitsOnly
                //   ],
                //   decoration: InputDecoration(
                //     //    hintText:  "enter your email",
                //     //  hintStyle: TextStyle(color: Colors.white70,fontSize: 16,fontFamily: "Raleway",fontWeight: FontWeight.w600),
                //     //prefixIcon: Icon(Icons.email_outlined,color: Colors.white,),
                //     focusedBorder: OutlineInputBorder(
                //       borderSide: const BorderSide(
                //         width: 1,
                //         color: DefaultColor.white,),
                //       borderRadius:  BorderRadius.circular( 5),
                //     ),
                //     enabledBorder: OutlineInputBorder(
                //       borderSide: const BorderSide(
                //         width: 1,
                //         color: DefaultColor.white,),
                //       borderRadius:  BorderRadius.circular(5),
                //     ),
                //
                //     contentPadding: EdgeInsets.symmetric(
                //         vertical: 10,
                //         horizontal: 10
                //     ),
                //   ),
                // ),
                ),
          ),
        ],
      ),
    );
  }


  void _showDetailsPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(child: Text("Item Quantity Details")),
          content: Container(
            color: Colors.green.shade100,
            height: 90,
            child: Column(
              children: [
                Container(
                  height: 35,
                  padding: EdgeInsets.symmetric(horizontal: 2),
                  color: Colors.grey.shade100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  Expanded(
                    flex: 2,
                    child: Text("Available Items:",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 19,
                        fontFamily: "Raleway",
                        fontWeight: FontWeight.w500)),
                  ),
            Expanded(
              flex: 1,
              child: Text("10",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 19,
                        fontFamily: "Raleway",
                        fontWeight: FontWeight.w500)),
            ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                Container(
                  height: 35,
                  padding: EdgeInsets.symmetric(vertical: 4,horizontal: 2),
                  color: Colors.grey.shade100,
                  child: Flex(
                    direction: Axis.horizontal,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text("Add Quantity:",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 19,
                                  fontFamily: "Raleway",
                                  fontWeight: FontWeight.w500)),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                              fontFamily: "Raleway",
                              fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                                fontFamily: "Raleway",
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
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
