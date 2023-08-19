import 'package:flutter/material.dart';
import 'package:it_momo_wala/ui/add_stock_item_screen.dart';
import 'package:it_momo_wala/widgets/custom_teft_filed.dart';
import 'package:it_momo_wala/widgets/round_button.dart';

import '../utils/default_colors.dart';
import '../widgets/buttom_manu.dart';
import '../widgets/customTextFormFiled.dart';
import '../widgets/stock_item_widget.dart';

class StocksScreen extends StatefulWidget {
  const StocksScreen({super.key});

  @override
  State<StocksScreen> createState() => _StocksScreenState();
}

class _StocksScreenState extends State<StocksScreen> {
  TextEditingController inStockController= TextEditingController();
  TextEditingController outStockController= TextEditingController();

  List<Map<String,dynamic>> itemList =[
    {
      "image":"assets/images/chicken_momo.jpg",
      "title":"ABC",
      "stock": 36.0,
      "price":30.0,
    },
    {
      "image":"assets/images/chicken_momo.jpg",
      "title":"Gdst",
      "stock": 84.0,
      "price":33.0,
    },
    {
      "image":"assets/images/chicken_momo.jpg",
      "title":"Rdsd",
      "stock": 6.0,
      "price":10.0,
    },
    {
      "image":"assets/images/chicken_momo.jpg",
      "title":"Sghdf",
      "stock": 26.0,
      "price":40.0,
    },
  ];

  int selectedIndex = 2;
  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
      bottomNavigationBar: BottomMenu(
        selectedIndex: selectedIndex,
        onClicked: onClicked,
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width:size.width,
            child: Column(
              children: [
                
                Container(
                  height: 140,
                  width: MediaQuery.of(context).size.width,
                  color: DefaultColor.delault_color,

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20,),
                          Text("     IT Momo Wala",style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.w600,fontFamily: "Poppins"),),
                          SizedBox(height: 20,),

                          Container(
                            height: 55,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade100,
                                  offset: Offset(0, 1),
                                  blurRadius: 0.5,
                                  spreadRadius: 0.5,
                                )
                              ]
                            ),

                            child: Row(
                              children: [
                                Expanded(flex: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white
                                ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("₹ 2,344",style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.w600,fontFamily: "Inter"),),
                                          Text("Total Stock Value",style: TextStyle(color: Colors.grey.shade500,fontSize: 12,fontWeight: FontWeight.w500,fontFamily: "Inter"),),
                                        ],
                                      ),
                                    )),
                                Container(width: 1,height: 45,color: Colors.grey.shade200),
                                Expanded(flex: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white
                                ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("1",style: TextStyle(color: Colors.red,fontSize: 19,fontWeight: FontWeight.w600,fontFamily: "Inter"),),
                                          Text("Low Stock Item",style: TextStyle(color: Colors.grey.shade500,fontSize: 12,fontWeight: FontWeight.w500,fontFamily: "Inter"),),
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                          )


                        ],
                      ),

                  
                ),

               SizedBox(height: 10,),

               Container(
                 width: MediaQuery.of(context).size.width*0.96,
                   child: CustomTextFormFiled(hintText: "Search Item", keytype: TextInputType.text,icons: Icons.search,height: 50)),

                SizedBox(height: 10,),

                Container(
                  width: size.width,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  color: Color(0xff333333),
                  height: 35,
                  child: Row(
                    children: [
                      Text("My Items",style: TextStyle(color: Colors.white70,fontSize: 14,fontWeight: FontWeight.w500,fontFamily: "Poppins")),
                      Spacer(),
                      Text("${itemList.length} Items Added",style: TextStyle(color: Colors.white70,fontSize: 14,fontWeight: FontWeight.w500,fontFamily: "Poppins"))
                    ],
                  ),
                ),


                ListView(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    children: itemList.map((value){
                      return   StockItemWidget(
                      productName: value["title"],
                      image: value["image"],
                      currentStocks: value["stock"],
                      salePrice: value["price"],
                      inStock: (){
                        showModalBottomSheet(
                          backgroundColor:Colors.transparent,
                            context: context,
                            builder:(context) {
                              return addStock();
                            }, );
                      },
                      outStock: (){
                        showModalBottomSheet(
                          backgroundColor:Colors.transparent,
                          context: context,
                          builder:(context) {
                            return outStock();
                          }, );
                      },
                   );
             }).toList(),

                )



              ],
            ),
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => AddStockItemScreen(),));
          },
      label: Container(
        child: Row(
          children: [
            Icon(Icons.add_shopping_cart),
            Text("Add Product")
          ],
        ),
      ),
      ),

    );
  }

  Widget addStock() {
    return Container(
      height: 220,
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      decoration: BoxDecoration(
        color: Color(0xFF2C2A2A),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Stock In",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600,fontFamily: "Inter"),),
          Text("Enter Quantity of Add Item",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500,fontFamily: "Inter"),),

          SizedBox(height: 20,),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width*0.25,
                child:TextField(
                  controller: inStockController,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w600,fontFamily: "Inter"),
                  decoration: InputDecoration(
                    hintText: 'Enter Quantity',
                    hintStyle: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w600,fontFamily: "Inter"),
                    border: InputBorder.none,    // No border
                    contentPadding: EdgeInsets.all(0), // No padding
                  ),
                ),
          ),),
          SizedBox(height: 20,),

          RoundButton(title: "Add Stock",color: DefaultColor.delault_color,style: TextStyle(color: Colors.white,fontSize: 16), onTap: (){
            inStockController.clear();
            Navigator.pop(context);
          })

        ],
      ),
    );
  }

  Widget outStock() {
    return Container(
      height: 220,
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      decoration: BoxDecoration(
        color: Color(0xFF2C2A2A),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Stock Out",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600,fontFamily: "Inter"),),
          Text("Enter Quantity of Out Item",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500,fontFamily: "Inter"),),

          SizedBox(height: 20,),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width*0.25,
              child:TextField(
                controller: outStockController,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w600,fontFamily: "Inter"),
                decoration: InputDecoration(
                  hintText: 'Enter Quantity',
                  hintStyle: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w600,fontFamily: "Inter"),
                  border: InputBorder.none,    // No border
                  contentPadding: EdgeInsets.all(0), // No padding
                ),
              ),
            ),),
          SizedBox(height: 20,),

          RoundButton(title: "Stock Out",color: DefaultColor.delault_color,style: TextStyle(color: Colors.white,fontSize: 16),
              onTap: () {
            outStockController.clear();
            Navigator.pop(context);

                }
              )


        ],
      ),
    );
  }
}
