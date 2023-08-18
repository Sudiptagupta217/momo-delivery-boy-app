import 'package:flutter/material.dart';

import '../utils/default_colors.dart';

class MenuWidget extends StatefulWidget {
  final String image;
  final String title;
  final String quantity;
  final String type;
  final String price;

  const MenuWidget({Key? key, required this.image, required this.title, required this.quantity, required this.type, required this.price}):super(key: key);

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return
      Container(
      margin: EdgeInsets.symmetric(horizontal: 4,vertical: 10) ,
      width: 200,
      height: 200,
      decoration: BoxDecoration(
          color: DefaultColor.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(22),topLeft: Radius.circular(22),bottomRight: Radius.circular(15),bottomLeft: Radius.circular(15)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 100,
              width: size.width,
              child: ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                  child: Image.asset(widget.image,fit: BoxFit.fill,))),

          SizedBox(height: 10,),

          Center(child: Text(widget.title, style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: DefaultColor.black,fontFamily: "Inter"))),
          SizedBox(height: 10,),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("total Quantity: ", style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: DefaultColor.bg_color,fontFamily: "Inter")),
                    Spacer(),
                    Text(widget.quantity, style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: DefaultColor.bg_color,fontFamily: "Inter")),
                  ],
                ),
                Row(
                  children: [
                    Text("type: ", style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: DefaultColor.bg_color,fontFamily: "Inter")),
                    Spacer(),
                    Text(widget.type, style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: DefaultColor.bg_color,fontFamily: "Inter")),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text("Rs."+widget.price,style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.w600)),
                    Spacer(),


                  ],
                )
              ],
            ),
          )


        ],
      ),
    );
  }
}
