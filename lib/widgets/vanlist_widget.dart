import 'package:flutter/material.dart';
import 'package:it_momo_wala/widgets/text_widget.dart';

class VanList extends StatefulWidget {
  final String image;
  final String vanNumber;
  final String totalchicken;
  final String totalveg;
  final String vanlocation;
  final String amount;

  const VanList({Key? key,
      required this.image,
      required this.vanNumber,
      required this.vanlocation,
      required this.totalchicken,
      required this.totalveg,
      required this.amount,
  }) : super(key: key);

  @override
  State<VanList> createState() => _VanListState();
}

class _VanListState extends State<VanList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
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

          Container(
            width: MediaQuery.of(context).size.width*0.12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.vanNumber,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                      fontFamily: "Poppins"),
                ),
                const SizedBox(height: 3,),
                Text(
                  widget.vanlocation,
                  style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: Colors.white70,
                      fontFamily: "Poppinss"),
                ),
              ],
            ),
          ),

        //  const Spacer(),
          SizedBox(width: 5,),

          Container(
            height: 60,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(item: 'I', color: Colors.white,),
                TextWidget(item: 'C', color: Colors.red,),
                TextWidget(item: 'V', color: Colors.green,),
              ],
            ),
          ),


          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                    itemBuilder:(context, index) {
                    return   Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(item: 'S', color: Colors.white,),
                        TextWidget(item: '10', color: Colors.red,),
                        TextWidget(item: '29', color: Colors.green,),
                      ],
                    );
                    },
                ),
              ),
            ),
          ),

          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     TextWidget(item: 'F', color: Colors.green,),
          //     TextWidget(item: '50', color: Colors.red,),
          //     TextWidget(item: '60', color: Colors.green,),
          //
          //     //Text(widget.totalchicken,style: TextStyle(color: Colors.red,fontSize: 10),),
          //   ],
          // ),
          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     TextWidget(item: 'S', color: Colors.green,),
          //     TextWidget(item: '40', color: Colors.red,),
          //     TextWidget(item: '30', color: Colors.green,),
          //
          //     //Text(widget.totalchicken,style: TextStyle(color: Colors.red,fontSize: 10),),
          //   ],
          // ),
          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     TextWidget(item: 'PF', color: Colors.green,),
          //     TextWidget(item: '10', color: Colors.red,),
          //     TextWidget(item: '90', color: Colors.green,),
          //
          //     //Text(widget.totalchicken,style: TextStyle(color: Colors.red,fontSize: 10),),
          //   ],
          // ),
          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     TextWidget(item: 'CM', color: Colors.green,),
          //     TextWidget(item: '10', color: Colors.red,),
          //     TextWidget(item: '10', color: Colors.green,),
          //
          //     //Text(widget.totalchicken,style: TextStyle(color: Colors.red,fontSize: 10),),
          //   ],
          // ),
          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     TextWidget(item: 'I', color: Colors.green,),
          //     TextWidget(item: 'C', color: Colors.red,),
          //     TextWidget(item: 'V', color: Colors.green,),
          //
          //     //Text(widget.totalchicken,style: TextStyle(color: Colors.red,fontSize: 10),),
          //   ],
          // ),
          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     TextWidget(item: 'I', color: Colors.green,),
          //     TextWidget(item: 'C', color: Colors.red,),
          //     TextWidget(item: 'V', color: Colors.green,),
          //
          //     //Text(widget.totalchicken,style: TextStyle(color: Colors.red,fontSize: 10),),
          //   ],
          // ),
          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     TextWidget(item: 'I', color: Colors.green,),
          //     TextWidget(item: 'C', color: Colors.red,),
          //     TextWidget(item: 'V', color: Colors.green,),
          //
          //     //Text(widget.totalchicken,style: TextStyle(color: Colors.red,fontSize: 10),),
          //   ],
          // ),
          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     TextWidget(item: 'I', color: Colors.green,),
          //     TextWidget(item: 'C', color: Colors.red,),
          //     TextWidget(item: 'V', color: Colors.green,),
          //
          //     //Text(widget.totalchicken,style: TextStyle(color: Colors.red,fontSize: 10),),
          //   ],
          // ),
          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     TextWidget(item: 'I', color: Colors.green,),
          //     TextWidget(item: 'C', color: Colors.red,),
          //     TextWidget(item: 'V', color: Colors.green,),
          //
          //     //Text(widget.totalchicken,style: TextStyle(color: Colors.red,fontSize: 10),),
          //   ],
          // ),


      SizedBox(width: 5,),



       //   const Spacer(),

          Text(widget.amount,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  fontFamily: "Inter"))

        ],
      ),
    );
  }
}
