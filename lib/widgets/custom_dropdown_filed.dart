import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  final String text;
  String selectedOption;
  Color? bgcolor=Color(0xFFF8F8FC);
  Color? hintcolor;
  Color? textColor;
  Color? dropdownColor=Color(0xFFF8F8FC);
  final double width;
  final List<String> listname;

  CustomDropdown({Key? key,
      required this.text,
       this.bgcolor,
       this.hintcolor,
       this.textColor,
       this.dropdownColor,
      required this.selectedOption,
      required this.width,
      required this.listname})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 21,
          ),
          Container(
            width: widget.width,///////
            //margin: EdgeInsets.only(top: 20),
            height: 55,
            decoration: BoxDecoration(
              color: widget.bgcolor,///////
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: DropdownButtonFormField<String>(
              dropdownColor: widget.dropdownColor,
              hint: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(widget.text,style: TextStyle(fontSize: 16,color: widget.hintcolor),),
              ),//////
              value: null,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF888E8F), width: 1.4),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0x00F6F6F6), width: 1.4),
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              onChanged: (String? newValue) {
                setState(() {
                  widget.selectedOption = newValue!;
                });
              },
              items: widget.listname.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("Van No: "+value,style: TextStyle(color: widget.textColor,)),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
