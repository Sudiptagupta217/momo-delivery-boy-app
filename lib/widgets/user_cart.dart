import 'package:flutter/material.dart';
import 'package:it_momo_wala/utils/default_colors.dart';

class UserCart extends StatefulWidget {
  final Image image;
  final String name;
  final String vanNo;
  final String phoneNo;

  const UserCart({Key? key, required this.image,required this.name, required this.vanNo, required this.phoneNo}) : super(key: key);

  @override
  State<UserCart> createState() => _UserCartState();
}

class _UserCartState extends State<UserCart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: DefaultColor.bg_color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius:0.4,
                blurRadius: 5,
                offset: Offset(0, 1), // vertical offset
              ),
            ],
          ),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    height: 55,
                    width: 55,
                    child:
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                          child: widget.image),
                    ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(widget.name, style: const TextStyle(fontSize: 15, fontFamily: "Inter",color: Colors.white, fontWeight: FontWeight.w600),),
                    Text(widget.phoneNo, maxLines: null, style: TextStyle(fontSize: 14,color: Colors.white70,fontFamily: "Poppins",),),
                    Text("van Id: "+ widget.vanNo, maxLines: null, style: TextStyle(fontSize: 14,color: Colors.white54,fontFamily: "Poppins",),),
                  ],
                )
              ],
            )
          ]),
        )

    );
  }
}
