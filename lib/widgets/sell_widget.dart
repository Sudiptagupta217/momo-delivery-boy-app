import 'package:flutter/material.dart';

class SellList extends StatefulWidget {
  final String image;
  final String day;
  final String totalchicken;
  final String totalveg;
  final String date;
  final String amount;

  const SellList({Key? key,
      required this.image,
      required this.day,
      required this.date,
      required this.totalchicken,
      required this.totalveg,
      required this.amount,
  }) : super(key: key);

  @override
  State<SellList> createState() => _SellListState();
}

class _SellListState extends State<SellList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10,right: 20, top: 5, bottom:5),
      margin: EdgeInsets.only(bottom: 1),
      color: Color(0x93262626),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Container(
                  height: 55,
                  width: 55,
                  child: Image.asset(widget.image as String, fit: BoxFit.fill,
                  ))),
          const SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.day,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    fontFamily: "Poppins"),
              ),
              const SizedBox(height: 3,),
              Text(
                widget.date,
                style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: Colors.white70,
                    fontFamily: "Poppinss"),
              ),
            ],
          ),
          const Spacer(),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("chicken",style: TextStyle(color: Colors.red),),
              Text(widget.totalchicken,style: TextStyle(color: Colors.red,fontSize: 10),),
            ],
          ),
          SizedBox(width: 5,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("veg",style: TextStyle(color: Colors.green),),
              Text(widget.totalveg,style: TextStyle(color: Colors.green,fontSize: 10),),
            ],
          ),
          const Spacer(),



          Column(
            children: [
              Text(widget.amount,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                      fontFamily: "Poppins"))
            ],
          )
        ],
      ),
    );
  }
}
