import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:it_momo_wala/utils/default_colors.dart';
import '../widgets/buttom_manu.dart';
import '../widgets/item_widget.dart';
import 'package:audioplayers/audioplayers.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<Map<String, dynamic>> itemDataList = [
    {
      'bgColor': 0xfff00000,
      'itemName': 'Steam Chicken Momo',
      'itemPrice': '50',
    //  'imagePath': "assets/images/chicken_momo.jpg",
      'totalPlates': 15.0.toDouble(),
      'sellItem': 0.0.toDouble(),
      'residueItem': 15.0.toDouble(),
    },
    {
      'bgColor': 0xff00c71b,
      'itemName': 'Steam Veg Momo',
      'itemPrice': '30',
      // 'imagePath': "assets/images/veg_momo.jpg",
      'totalPlates': 10.0.toDouble(),
      'sellItem': 0.0.toDouble(),
      'residueItem': 10.0.toDouble(),
    },


    {
      'bgColor': 0xfff00000,
      'itemName': ' Fried Chicken Momo',
      'itemPrice': '70',
      //  'imagePath': "assets/images/chicken_momo.jpg",
      'totalPlates': 60.0.toDouble(), 
      'sellItem': 0.0.toDouble(), 
      'residueItem': 60.0.toDouble(),
    },
    {
      'bgColor': 0xff00c71b,
      'itemName': 'Fried Veg Momo',
      'itemPrice': '50',
      // 'imagePath': "assets/images/veg_momo.jpg",
      'totalPlates': 10.0.toDouble(),
      'sellItem': 0.0.toDouble(),
      'residueItem': 10.0.toDouble(),
    },

    {
      'bgColor': 0xfff00000,
      'itemName': 'Rost Chicken Momo',
      'itemPrice': '100',
      // 'imagePath': "assets/images/chicken_momo.jpg",
      'totalPlates': 60.0.toDouble(),
      'sellItem': 0.0.toDouble(),
      'residueItem': 60.0.toDouble(),
    },

    {
      'bgColor': 0xff00c71b,
      'itemName': 'Rost Veg Momo',
      'itemPrice': '80',
      //'imagePath': "assets/images/veg_momo.jpg",
      'totalPlates': 10.0.toDouble(),
      'sellItem': 0.0.toDouble(),
      'residueItem': 10.0.toDouble(),
    },

    {
      'bgColor': 0xfff00000,
      'itemName': 'Pan Fried Chicken Momo',
      'itemPrice': '100',
     // 'imagePath': "assets/images/chicken_momo.jpg",
      'totalPlates': 60.0.toDouble(),
      'sellItem': 0.0.toDouble(),
      'residueItem': 60.0.toDouble(),
    },

    {
      'bgColor': 0xff00c71b,
      'itemName': 'Pan Fried Veg Momo',
      'itemPrice': '80',
     // 'imagePath': "assets/images/veg_momo.jpg",
      'totalPlates': 10.0.toDouble(),
      'sellItem': 0.0.toDouble(),
      'residueItem': 10.0.toDouble(),
    },


    {
      'bgColor': 0xfff00000,
      'itemName': '1/2 Chicken Momo',
      'itemPrice': '30',
    //  'imagePath': "assets/images/chicken_momo.jpg",
      'totalPlates': 15.0.toDouble(),
      'sellItem': 0.0.toDouble(),
      'residueItem': 15.0.toDouble(),
    },
    {
      'bgColor': 0xff00c71b,
      'itemName': '1/2 Veg Momo',
      'itemPrice': '20',
     // 'imagePath': "assets/images/veg_momo.jpg",
      'totalPlates': 10.0.toDouble(),
      'sellItem': 0.0.toDouble(),
      'residueItem': 10.0.toDouble(),
    },

  ];

  int selectedIndex = 0;
  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  bool showText = false;
  void toggleText() {
    setState(() {
      showText = !showText;
    });
  }


  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.black, // Replace with your desired color
    ));


    return Scaffold(
     backgroundColor: DefaultColor.bg_color,

      bottomNavigationBar: BottomMenu(
        selectedIndex: selectedIndex,
        onClicked: onClicked,
      ),

      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              height: 60,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: DefaultColor.delault_color,
                // borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10))
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  SizedBox(width: 10,),

                  Icon(Icons.menu,color: Colors.white,),

                  Spacer(),

                  Container(
                      height: 45,
                      margin: EdgeInsets.only(top: 5),
                      child: Image.asset("assets/images/logo_mini.png",fit: BoxFit.fill,)),

                   Spacer(),


                   Container(
                     margin: EdgeInsets.only(right: 20),
                      child:
                            ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Container(
                                    height: 35,
                                    width: 35,
                                    child: Image.asset("assets/images/man.jpg",fit: BoxFit.cover,)))
                    ),

                ],
              ),
            ),

            Expanded(
              child:
              Container(
                padding: EdgeInsets.only(left: 5,right: 5,top: 10),
                decoration: const BoxDecoration(
                    color: Color(0xff2a2929),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25)),
                ),
                child: GridView.count(
                  crossAxisCount: 2,
                  physics: BouncingScrollPhysics(),
                  childAspectRatio: 0.87,
                  shrinkWrap: true,
                  controller: new ScrollController(keepScrollOffset: false),

                  children: itemDataList.asMap().entries.map<Widget>((entry) {
                  //itemDataList.map<Widget>((itemData) {

                    int index = entry.key;
                    Map<String, dynamic> itemData = entry.value;

                    String audioAsset;
                    String imagePath;
                    int priceBgColor;

                    if (index == 0) {
                      audioAsset = 'audio/chicken.mp3';
                      imagePath = 'assets/images/chicken_momo.jpg';
                      priceBgColor = 0xfff00000;
                    }
                    else if(index == 1 ) {
                      audioAsset = 'audio/vage.wav';
                      imagePath = 'assets/images/veg_momo.jpg';
                      priceBgColor = 0xff00c71b;
                    }
                    else if(index == 2 ) {
                      audioAsset = 'audio/vage.wav';
                      imagePath = 'assets/images/chicken_momo.jpg';
                      priceBgColor = 0xfff00000;
                    }
                    else if(index == 3 ) {
                      audioAsset = 'audio/vage.wav';
                      imagePath = 'assets/images/veg_momo.jpg';
                      priceBgColor = 0xff00c71b;
                    }
                    else if(index == 4 ) {
                      audioAsset = 'audio/vage.wav';
                      imagePath = 'assets/images/chicken_momo.jpg';
                      priceBgColor = 0xfff00000;
                    }
                    else if(index == 5 ) {
                      audioAsset = 'audio/vage.wav';
                      imagePath = 'assets/images/veg_momo.jpg';
                      priceBgColor = 0xff00c71b;
                    }
                    else if(index == 6 ) {
                      audioAsset = 'audio/vage.wav';
                      imagePath = 'assets/images/chicken_momo.jpg';
                      priceBgColor = 0xfff00000;
                    }
                    else if(index == 7 ) {
                      audioAsset = 'audio/vage.wav';
                      imagePath = 'assets/images/veg_momo.jpg';
                      priceBgColor = 0xff00c71b;
                    }
                    else if(index == 8 ) {
                      audioAsset = 'audio/vage.wav';
                      imagePath = 'assets/images/chicken_momo.jpg';
                      priceBgColor = 0xfff00000;
                    }
                    else if(index == 9 ) {
                      audioAsset = 'audio/vage.wav';
                      imagePath = 'assets/images/veg_momo.jpg';
                      priceBgColor = 0xff00c71b;
                    }
                    else{
                      audioAsset = 'audio/vage.wav';
                      imagePath = 'assets/images/chicken_momo.jpg';
                      priceBgColor = 0xff00c71b;
                    }

                    return ItemWidget(
                      itemName: itemData['itemName'],
                      itemPrice: itemData['itemPrice'],
                      priceBgColor: Color(priceBgColor),
                      backgroundColor: Color(itemData['bgColor']),
                     // itemImage: itemData['imagePath'],
                      itemImage: imagePath,
                      totalPlates: itemData['totalPlates'],
                      sellItem: itemData['sellItem'],
                      residueItem: itemData['residueItem'],
                     // itemNameColor: itemData['itemNameColor'],
                      callback: () {
                        setState(() {
                          itemData['sellItem']++;
                          itemData['residueItem']--;
                         // AudioPlayer().play(AssetSource('audio/vage.wav'));
                          AudioPlayer().play(AssetSource(audioAsset));
                        });
                      },
                      onLongPress: () {
                        setState(() {
                          itemData['sellItem']--;
                          itemData['residueItem']++;
                          AudioPlayer().play(AssetSource('audio/Return.mp3'));
                        });
                      },
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
