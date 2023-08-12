import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFiled extends StatefulWidget {
  final String text;
  final Icon icon;

  const CustomTextFiled({Key? key, required this.text, required this.icon}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CustomTextFiledstate();
}

class _CustomTextFiledstate extends State<CustomTextFiled> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 25,
          ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 2.0),
          //   child: Text(
          //     widget.text,
          //     style: TextStyle(fontSize: 17, color: Color(0xffA6A6A6)),
          //   ),
          // ),

          Container(
            height: 55,
            child: TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,

              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20),


              decoration: InputDecoration(
                  prefixIcon: widget.icon,
                  prefixIconColor: Colors.grey.shade500,
                  hintText: widget.text,
                  hintStyle: TextStyle(fontSize: 17, color: Color(0xffA6A6A6)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffD0D0D0), width: 1),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                // enabledBorder: OutlineInputBorder(
                //   borderSide: BorderSide(color: Color(0xffD0D0D0), width: 1.2),
                //   borderRadius: BorderRadius.circular(15.0),
                // ),
              ),


            ),
          ),
        ],
      ),
    );
  }
}
