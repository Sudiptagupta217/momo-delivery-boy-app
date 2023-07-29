import 'package:flutter/material.dart';
import 'package:it_momo_wala/utils/default_colors.dart';
import 'package:it_momo_wala/utils/utils.dart';

class ItemWidget extends StatefulWidget {
  final String itemName;
  final String itemImage;
 // Color? itemNameColor;
  final double totalPlates;
  final double sellItem;
  final double residueItem;
  Color? backgroundColor;
  VoidCallback callback;
  VoidCallback onLongPress;

  ItemWidget({Key? key,
    required this.itemName,
    required this.itemImage,
    required this.totalPlates,
    required this.sellItem,
    required this.residueItem,
    this.backgroundColor = DefaultColor.white,
   // this.itemNameColor =DefaultColor.white,
    required this.callback,
    required this.onLongPress,

  }) : super(key: key);

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring:  widget.residueItem < 1 ,
      child: InkWell(
        onLongPress: (){
          if(widget.residueItem!=widget.totalPlates) {
            widget.onLongPress();
          }
        },
        onTap: () {
          widget.callback();
          if(((widget.totalPlates/4)+1).toInt()==widget.residueItem){
            print("${widget.itemName} now avalable only ${(widget.totalPlates)/4} Plates ");

            Utils.toastMessage("${widget.itemName} now avalable only ${(widget.totalPlates)~/4} Plates \n");
          }
        },
        highlightColor: Colors.red.shade50,
        borderRadius: BorderRadius.circular(10),
        child: Container(
        margin: EdgeInsets.only(bottom: 10),
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 5),
              ),
              Positioned(
                top: 50,
                  right: 0,
                  left: 0,
                  bottom: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                    Container(
                     // padding: EdgeInsets.symmetric(vertical: 7,horizontal: 5),
                      height: 160,
                      width: MediaQuery.of(context).size.width*0.45,

                      decoration: BoxDecoration(
                          color: widget.backgroundColor,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              blurRadius: 5.0,
                              spreadRadius: 2.0,
                              offset: Offset(0, 3),
                            ),
                          ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [


                        //  Container(
                         //   margin: EdgeInsets.only(left: 10,top: 10),
                          //  width: MediaQuery.of(context).size.width*0.2,
                             // child:
                          SizedBox(height: 40,),
                              Center(child: Text(widget.itemName, style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,color: DefaultColor.white,fontFamily: "Inter"),)),
                  //  ),
                          Spacer(),

                          // Padding(
                          //   padding: const EdgeInsets.symmetric(horizontal: 7.0),
                          //   child: Column(
                          //     children: [
                          //       Row(
                          //         children: [
                          //           Text("Total:          ",style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.w500,fontFamily: "Latos"),),
                          //           Text(widget.totalPlates.toString(),style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w600,fontFamily: "Latos"),),
                          //         ],
                          //       ),
                          //       Row(
                          //         children: [
                          //           Text("Sell:             ",style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.w500,fontFamily: "Latos"),),
                          //
                          //           Text(widget.sellItem.toString(),style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w600,fontFamily: "Latos"),),
                          //         ],
                          //       ),
                          //       Row(
                          //         children: [
                          //           Text("Residue:     ",style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.w500,fontFamily: "Latos"),),
                          //           Text(widget.residueItem.toString(),style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w600,fontFamily: "Latos"),),
                          //           SizedBox(width: 10,),
                          //           // widget.residueItem> 1? Container(
                          //           //    height: 7,
                          //           //    width: 60,
                          //           //    child: ClipRRect(
                          //           //      borderRadius: BorderRadius.circular(3),
                          //           //      child: LinearProgressIndicator(
                          //           //        value: (widget.totalPlates - widget.sellItem)/widget.totalPlates, // Set the current progress value
                          //           //        backgroundColor: Colors.grey[300], // Set the background color of the progress bar
                          //           //        valueColor: AlwaysStoppedAnimation<Color>(widget.residueItem>20? Colors.blue:Colors.red), // Set the color of the progress indicator
                          //           //      ),
                          //           //    ),
                          //           //  ):Container(height: 7,width: 60,decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),color: Colors.grey[300]),),
                          //         ],
                          //       ),
                          //
                          //
                          //       // AnimatedContainer(
                          //       //   duration: Duration(milliseconds: 500),
                          //       //   height: widget.residueItem > 1 ? 10 : 7,
                          //       //   width: widget.residueItem > 1 ? MediaQuery.of(context).size.width : 60,
                          //       //   decoration: BoxDecoration(
                          //       //     borderRadius: BorderRadius.circular(widget.residueItem > 1 ? 10 : 3),
                          //       //     color: Colors.grey[300],
                          //       //     boxShadow: widget.residueItem > 1
                          //       //         ? [
                          //       //       BoxShadow(
                          //       //         color: Colors.grey.withOpacity(0.3),
                          //       //         blurRadius: 5.0,
                          //       //         spreadRadius: 2.0,
                          //       //         offset: Offset(2, 3),
                          //       //       ),
                          //       //     ]
                          //       //         : null,
                          //       //   ),
                          //       //   child: widget.residueItem > 1
                          //       //       ? ClipRRect(
                          //       //     borderRadius: BorderRadius.circular(10),
                          //       //     child: LinearProgressIndicator(
                          //       //       value: (widget.totalPlates - widget.sellItem) / widget.totalPlates,
                          //       //       backgroundColor: Colors.grey[300],
                          //       //       valueColor: AlwaysStoppedAnimation<Color>(
                          //       //           widget.residueItem > (widget.totalPlates/4) ? Colors.blue : Colors.red),
                          //       //     ),
                          //       //   )
                          //       //       : Container(), // Empty container when residueItem <= 1
                          //       // )
                          //
                          //     ],
                          //   ),
                          // ),

                          Center(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 500),
                                height: 4,
                                width: MediaQuery.of(context).size.width*0.4,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.transparent,
                                    boxShadow: [
                                      BoxShadow(
                                        color: ((widget.totalPlates / 4 )+1).toInt() <= widget.residueItem ? Colors.blue.withOpacity(0.3):Colors.red.withOpacity(0.3),
                                        blurRadius: 1.0,
                                        spreadRadius: 1.0,
                                        offset: const Offset(0, -4),
                                      ),
                                    ]
                                ),
                                child: Stack(
                                  children: [
                                    LinearProgressIndicator(
                                      value: (widget.totalPlates - widget.sellItem) / widget.totalPlates,
                                      backgroundColor: Colors.white,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        widget.residueItem > (widget.totalPlates / 4)
                                            ? Colors.blue // When residueItem is greater than (totalPlates/4), show blue color.
                                            : Colors.red, // Otherwise, show red color.
                                      ),
                                    ),
                                  ],
                                ), // Empty container when residueItem <= 1
                              ),
                            ),
                          ),

                          Spacer(),


                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                 Column(
                                   children: [
                                     Text("Total",style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.w500,fontFamily: "Latos"),),
                                     Text(widget.totalPlates.toInt().toString(),style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w600,fontFamily: "Latos"),),
                                   ],
                                 ),
                               //  Text("|",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w600,fontFamily: "Latos"),),

                                 Column(
                                   children: [
                                     Text("Sell",style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.w500,fontFamily: "Latos"),),
                                     Text(widget.sellItem.toInt().toString(),style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w600,fontFamily: "Latos"),),
                                   ],
                                 ),

                                 // Text("|",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w600,fontFamily: "Latos"),),

                                  Column(
                                    children: [
                                      Text("Residue",style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.w500,fontFamily: "Latos"),),
                                      Text(widget.residueItem.toInt().toString(),style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w600,fontFamily: "Latos"),),
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),


                          Spacer(),

                          // Center(
                          //   child: ClipRRect(
                          //     borderRadius: BorderRadius.circular(40),
                          //     child: AnimatedContainer(
                          //       duration: Duration(milliseconds: 500),
                          //       height: 4,
                          //       width: MediaQuery.of(context).size.width*0.4,
                          //       decoration: BoxDecoration(
                          //         borderRadius: BorderRadius.circular(50),
                          //         color: Colors.transparent,
                          //         boxShadow: [
                          //           BoxShadow(
                          //             color: ((widget.totalPlates / 4 )+1).toInt() <= widget.residueItem ? Colors.blue.withOpacity(0.3):Colors.red.withOpacity(0.3),
                          //             blurRadius: 1.0,
                          //             spreadRadius: 1.0,
                          //             offset: const Offset(0, -4),
                          //           ),
                          //        ]
                          //       ),
                          //       child: Stack(
                          //         children: [
                          //           LinearProgressIndicator(
                          //             value: (widget.totalPlates - widget.sellItem) / widget.totalPlates,
                          //             backgroundColor: Colors.transparent,
                          //             valueColor: AlwaysStoppedAnimation<Color>(
                          //               widget.residueItem > (widget.totalPlates / 4)
                          //                   ? Colors.blue // When residueItem is greater than (totalPlates/4), show blue color.
                          //                   : Colors.red, // Otherwise, show red color.
                          //             ),
                          //           ),
                          //         ],
                          //       ), // Empty container when residueItem <= 1
                          //     ),
                          //   ),
                          // ),

                        ],
                      ),
                    ),
                  ) ),
              Positioned(
               // top: 15,
               left:15,
                right: 15,
                child: Container(
                  height: 95,
                  width: 95,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.grey.withOpacity(0.3),
                    //     blurRadius: 5.0,
                    //     spreadRadius: 2.0,
                    //     offset: Offset(0, 3),
                    //   ),
                    // ],

                      boxShadow: [
                        BoxShadow(
                          blurRadius: 1.0,

                            offset: Offset(0, 0),
                            color:  Colors.grey.shade600,

                        ),
                        BoxShadow(
                          blurRadius: 5.0,

                          offset: Offset(-2, -2),
                          color:  Colors.grey.shade200,
                        ),
                        BoxShadow(
                          blurRadius: 5.0,

                          offset: Offset(2, 2),
                          color:  Colors.blue.withOpacity(0.1),
                        ),
                        BoxShadow(
                          blurRadius: 5.0,

                          offset: Offset(2, -2),
                          color:  Colors.blue.withOpacity(0.1),
                        )
                      ]

                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 90,
                      width: 90,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(widget.itemImage,fit: BoxFit.fill)),
                    ),
                  ),
                ),
              ),

            ],
          )


        ),
      ),
    );

  }
}
