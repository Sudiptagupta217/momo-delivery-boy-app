import 'package:flutter/material.dart';
import 'package:it_momo_wala/ui/auth/login_screen.dart';
import '../utils/default_colors.dart';
import '../widgets/menu_widget.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {


  final List<Map<String, dynamic>> itemList =[
    {
      "image":"assets/images/chicken_momo.jpg",
      "title":"Steam Chicken Momo",
      "quantity":"6 Pieces",
      "type":"Steam Chicken",
      "price":"50"
    },
    {
      "image":"assets/images/veg_momo.jpg",
      "title":"Steam Veg Momo",
      "quantity":"5 Pieces",
      "type":"Steam Veg",
      "price":"50"
    },
    {
      "image":"assets/images/chicken_momo.jpg",
      "title":"Fried Chicken Momo",
      "quantity":"6 Pieces",
      "type":"Fried Chicken",
      "price":"50"
    },
    {
      "image":"assets/images/veg_momo.jpg",
      "title":"Fried Veg Momo",
      "quantity":"5 Pieces",
      "type":"Fried Veg",
      "price":"50"
    },
    {
      "image":"assets/images/veg_momo.jpg",
      "title":"Rost Chicken Momo",
      "quantity":"5 Pieces",
      "type":"Rost Chicken",
      "price":"50"
    },
    {
      "image":"assets/images/veg_momo.jpg",
      "title":"Rost Veg Momo",
      "quantity":"5 Pieces",
      "type":"Rost Veg",
      "price":"50"
    },
    {
      "image":"assets/images/veg_momo.jpg",
      "title":"Pan Fried Chicken Momo",
      "quantity":"5 Pieces",
      "type":"Pan Fried Chicken",
      "price":"50"
    },
    {
      "image":"assets/images/veg_momo.jpg",
      "title":"Pan Fried Veg Momo",
      "quantity":"5 Pieces",
      "type":"Pan Fried Veg",
      "price":"50"
    },
    {
      "image":"assets/images/veg_momo.jpg",
      "title":"1/2 Chicken Momo",
      "quantity":"3 Pieces",
      "type":"Chicken",
      "price":"50"
    },
    {
      "image":"assets/images/veg_momo.jpg",
      "title":"1/2 Veg Momo",
      "quantity":"5 Pieces",
      "type":"Veg",
      "price":"50"
    },

  ];

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 3;
    final double itemWidth = size.width / 2;


    return Scaffold(
      backgroundColor: DefaultColor.bg_color,



      body: SafeArea(
        child: Column(
          children: [
            Container(
              // height: 60,
              padding: EdgeInsets.symmetric(vertical: 5),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: DefaultColor.delault_color,
                // borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10))
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  SizedBox(width: 60,),

                  Spacer(),

                  Container(
                      height: 40,
                      margin: EdgeInsets.only(top: 5),
                      child: Image.asset("assets/images/logo_mini.png",fit: BoxFit.fill,)),

                  Spacer(),


                 // Icon(Icons.login_outlined,color: Colors.white,size: 24,),
                  InkWell(
                    onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen())),
                      child: Text("Login",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),)),
                  SizedBox(width: 20,)


                ],
              ),
            ),




            Expanded(
              child:
              GridView.count(
                crossAxisCount: 2,
                physics: BouncingScrollPhysics(),
              //  childAspectRatio: (itemWidth / itemHeight),
                childAspectRatio: 0.81,
                shrinkWrap: true,

               children: itemList.map<Widget>((item){
                 return MenuWidget(
                     image: item["image"],
                     title: item['title'],
                     quantity: item['quantity'],
                     type: item['type'],
                     price: item['price']
                 );
               }).toList(),
              )
              //MenuWidget(image: 'assets/images/veg_momo.jpg', title: 'Chicken  Momo', quantity: '5 Pieces', type: 'chicken', price: '50',)
            ),
          ],
        ),
      ),
    );
  }
}