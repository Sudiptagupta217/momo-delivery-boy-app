import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:it_momo_wala/widgets/round_button.dart';

import '../utils/default_colors.dart';
import '../widgets/customTextFormFiled.dart';

class AddStockItemScreen extends StatefulWidget {
  const AddStockItemScreen({super.key});

  @override
  State<AddStockItemScreen> createState() => _AddStockItemScreenState();
}

class _AddStockItemScreenState extends State<AddStockItemScreen> {

  @override
  Widget build(BuildContext context) {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.black, // Replace with your desired color
  ));
    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                  height: 60,
                  color: DefaultColor.delault_color,
                  child: Row(
                    children: [
                      IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back,color: Colors.white,)),
                      Text("Add Items",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600,fontFamily: "Inter"))
                    ],
                  ),
                ),

                SizedBox(height: 10,),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(
                       // color: Colors.yellow.shade100,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 5,
                                child:
                                CustomTextFormFiled(hintText: "Enter Item name",keytype: TextInputType.text,),
                            ),

                            Stack(
                              children: [
                                Container(padding: EdgeInsets.all(10),height: 70,width: 80,),
                                Positioned(
                                    right: 10,
                                    top: 10,
                                    left: 10,
                                    bottom: 10,
                                    child:Container(
                                      height: 65,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        border: Border.all(width: 2,color: Colors.grey.shade800),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.camera_alt_outlined,color: Colors.white70,),
                                          Text("Photo",style: TextStyle(color: Colors.white70),)
                                        ],
                                      ),
                                    ) ),
                                Positioned(
                                  top: 0,
                                    right: 0,
                                    child: Container(
                                      decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(20)),
                                  height: 22,width: 22,
                                      child: Icon(Icons.add,color: Colors.white,size: 16),
                                ))
                              ],
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 10,),

                      Divider(color: Colors.white24,),

                      SizedBox(height: 10,),

                      Container(
                        width: MediaQuery.of(context).size.width*0.45,
                          child: CustomTextFormFiled(text: "Sale Price",hintText: "Enter Price",height: 70,icons: Icons.currency_rupee,keytype: TextInputType.number)),


                      SizedBox(height: 10,),

                      Divider(color: Colors.white24),

                      SizedBox(height: 10,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width*0.45,
                              child: CustomTextFormFiled(text: "Opening Stock",hintText: "Enter Count",height: 70,keytype: TextInputType.number,
                                suficons: Icons.keyboard_arrow_down,
                              onTap: (){},
                              )),
                          Container(
                              width: MediaQuery.of(context).size.width*0.45,
                              child: CustomTextFormFiled(text: "Low Stock Alert",hintText: "Enter Count",height: 70,keytype: TextInputType.number,suficons: Icons.notifications_none,)),
                        ],
                      ),

                      SizedBox(height: 20,),

                      Row(
                        children: [
                          Text("As of Date  ",style: TextStyle(color: Colors.white70,fontSize: 13)),
                          Text("Toady",style: TextStyle(color: Colors.blue.shade600,fontSize: 14,fontFamily: "Raleway",fontWeight: FontWeight.w600)),
                          SizedBox(width: 2,),
                          Icon(Icons.edit,color: Colors.blue.shade600,size: 13,)
                        ],
                      ),

                      SizedBox(height: 20,),


                      Divider(color: Colors.white24,),

                      SizedBox(height: 100,),


                      RoundButton(title: "Save Item", onTap: (){},color: DefaultColor.delault_color,style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w600),)


                    ],
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
