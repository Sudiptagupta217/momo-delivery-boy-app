import 'package:flutter/material.dart';
import 'package:it_momo_wala/utils/default_colors.dart';

class RoundButton extends StatelessWidget {
 final String title;
 final VoidCallback onTap;
 final bool loading ;
 TextStyle? style;

   RoundButton({super.key,
    required this.title,
    this.style,
    required this.onTap,
     this.loading=false
  }
      );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
      height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.white70,
              blurRadius: .1,
              offset: Offset(0, 1),
            ),]
        ),
        child: Center(child: loading ?CircularProgressIndicator(color: Colors.white,):
        Text(title, style: style)),
      ),
    );
  }
}
