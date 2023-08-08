import 'package:flutter/material.dart';

class TextWidget extends StatefulWidget {
  final String item;
  Color color;

   TextWidget({
    Key ? key,
    required this.item,
    required this.color,
}):super(key: key);

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 3,right: 3,top: 2,bottom: 2),
      // decoration: BoxDecoration(
      //   //  color: widget.color,
      //     border: Border.all(width: .5,color: Colors.white),
      //   borderRadius: BorderRadius.circular(5)
      // ),
        //width: 14,
       // height: 14,
        child: Center(child: Text(widget.item,textAlign: TextAlign.center, style: TextStyle( color: widget.color,fontSize: 10,),)));
  }
}
