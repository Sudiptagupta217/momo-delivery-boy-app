import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/default_colors.dart';

class AddItemtextWidget extends StatefulWidget {

  final String title;

  const AddItemtextWidget({Key? key,
    required this.title,
}):super(key: key);

  @override
  State<AddItemtextWidget> createState() => _AddItemtextWidgetState();
}

class _AddItemtextWidgetState extends State<AddItemtextWidget> {
  @override
  Widget build(BuildContext context) {
    return
      Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Container(
              width: MediaQuery.of(context).size.width*0.60,
              child: Text(widget.title,style: TextStyle(color: Colors.white,fontSize: 16),)),

          Spacer(),

          Container(
            width: MediaQuery.of(context).size.width*0.2,
            height: 40,
            child: TextFormField(
              style: const TextStyle(color: Colors.white),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
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

    );
  }
}
