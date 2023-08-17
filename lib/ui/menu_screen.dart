import 'package:flutter/material.dart';

import '../widgets/custom_stepper.dart';
import 'package:count_stepper/count_stepper.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child: SizedBox(
          height: 300,
          width: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/veg_momo.jpg"),
              const Text("Veg Momo"),
              const Text("Rs. 30",style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.w600)),
              CountStepper(
                defaultValue: 2,
                max: 10,
                iconIncrement: Container(height: 20,width: 20,child: Icon(Icons.add,color: Colors.blue,)),
                iconDecrement: Container(height: 20,width: 20,child: Icon(Icons.remove,color: Colors.blue,)),
                textStyle: TextStyle(fontSize: 17),
                splashRadius: 25,
                onPressed: (value) {},
              ),

            ],
          ),
        ),

      ),
    );
  }
}