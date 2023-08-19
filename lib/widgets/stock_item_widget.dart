import 'package:flutter/material.dart';

class StockItemWidget extends StatefulWidget {

  final double salePrice;
  final double currentStocks;
  final String productName;
  final String image;
  final VoidCallback inStock;
  final VoidCallback outStock;

  const StockItemWidget({Key? key,
    required this.productName,
    required this.salePrice,
    required this.image,
    required this.currentStocks,
    required this.inStock,
    required this.outStock,
  }):super(key: key);

  @override
  State<StockItemWidget> createState() => _StockItemWidgetState();
}

class _StockItemWidgetState extends State<StockItemWidget> {
  @override
  Widget build(BuildContext context) {
    return
      Container(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                    height: 55,
                    width: 55,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(widget.image,fit: BoxFit.fill,))),
                SizedBox(width: 10,),
                Text(widget.productName,style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500,fontFamily: "Lato")),
                Spacer(),

                (widget.currentStocks) < 10  ?
                Container(
                    height: 25,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0x73917272)
                    ),
                    child: Center(child: Text("Low Stock",style: TextStyle(color: Colors.red,fontSize: 13,fontWeight: FontWeight.w600,fontFamily: "Inter")))
                ):Container()

              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Sale Price (₹)",style: TextStyle(color: Colors.white,fontSize: 10,fontFamily: "Lato")),
                    Text("₹ "+widget.salePrice.toString(),style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600,fontFamily: "Inter"))
                  ],
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Current Stocks",style: TextStyle(color: Colors.white,fontSize: 10,fontFamily: "Lato")),
                    Text(widget.currentStocks.toString(),style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600,fontFamily: "Inter"))
                  ],
                ),

                Row(
                  children: [

                    InkWell(
                      onTap:(){
                        widget.inStock();
                      },
                      child: Container(height: 30,
                        width: 55,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.green,width: 0.7),
                            borderRadius: BorderRadius.all(Radius.circular(5))
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.add,color: Colors.white,size: 16,weight: 10),
                            Text("IN",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500,fontFamily: "Inter"))
                          ],
                        ),
                      ),
                    ),

                    SizedBox(width: 5,),

                    InkWell(
                      onTap: () {
                        widget.outStock();
                      },
                      child: Container(height: 30,
                        width: 55,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.red.shade500,width: 0.7),
                            borderRadius: BorderRadius.all(Radius.circular(5))
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.remove,color: Colors.white,size: 16,weight: 10),
                            Text("OUT",style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500,fontFamily: "Inter"))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),


              ],
            ),
            SizedBox(height: 10,),
            Divider(height: 2,color: Colors.white24,)

          ],
        ),
      );
  }
}
