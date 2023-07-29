
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:it_momo_wala/utils/default_colors.dart';

class Utils   {

 static String lorem = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";


 static toastMessage(String message){
  Fluttertoast.showToast(
      msg: message,
      textColor:DefaultColor.delault_color,
      backgroundColor: Colors.transparent,
      fontSize: 17,
      gravity: ToastGravity.BOTTOM,
      toastLength:Toast.LENGTH_LONG,
  );

 }

}