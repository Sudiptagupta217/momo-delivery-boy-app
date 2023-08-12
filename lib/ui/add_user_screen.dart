import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:it_momo_wala/utils/default_colors.dart';
import 'package:it_momo_wala/widgets/drawer_menu.dart';
import 'package:it_momo_wala/widgets/round_button.dart';

import '../widgets/buttom_manu.dart';
import '../widgets/custom_teft_filed.dart';

class AddUserScreen extends StatefulWidget {
  const AddUserScreen({super.key});

  @override
  State<AddUserScreen> createState() => _AddUserScreenState();
}

class _AddUserScreenState extends State<AddUserScreen> {

  PickedFile? _imageFile;
  final ImagePicker _picker = ImagePicker();

  int selectedIndex = 0;
  void onClicked(int index){
    setState(() {
      selectedIndex =index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: DrawerMenu(),

      bottomNavigationBar:  BottomMenu(
        selectedIndex: selectedIndex,
        onClicked: onClicked,
      ),
      body: SingleChildScrollView(

        child: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    DefaultColor.bg_color,
                    Colors.blueGrey.shade900,
                  ],
                )
            ),
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [

                SizedBox(height: 30,),

                Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    child: Stack(
                      children: [
                        Positioned(
                            right: 10,
                            left: 10,
                            top: 10,
                            bottom: 10,
                            child: Container(
                                height: 100,
                                width: 100,
                                child: CircleAvatar(
                                  radius: 80,
                                  backgroundImage: _imageFile == null
                                      ? null
                                      : FileImage(File(_imageFile!.path)),
                                ))),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) => bottomsheet());
                            },
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1,color: Colors.white),
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color(0xFF341A9D)
                              ),
                              child: Icon(Icons.camera_alt_outlined,
                                  color: Colors.white, size: 15),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                CustomTextFiled(text: "Name",icon: Icon(Icons.account_circle_outlined)),
                CustomTextFiled(text: "Phone",icon: Icon(Icons.phone_android)),
                CustomTextFiled(text: "Email",icon: Icon(Icons.alternate_email)),
                CustomTextFiled(text: "Password",icon: Icon(Icons.lock_outline_rounded)),
                CustomTextFiled(text: "Van Id",icon: Icon(Icons.car_crash)),
                CustomTextFiled(text: "User Type",icon: Icon(Icons.type_specimen)),

                SizedBox(height: 20,),

                RoundButton(title: "Add",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w500), color: DefaultColor.delault_color,onTap: (){}),

                SizedBox(height: 20,),


              ],
            ),
          ),
        ),

      ),
    );
  }

  Widget bottomsheet() {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.all(15),
      child: Column(
        children: [
          Text(
            "Choose Profile Picture",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              TextButton.icon(
                icon: Icon(Icons.camera, color: Colors.grey.shade900),
                onPressed: () {
                  takePhoto(ImageSource.camera);
                  Navigator.pop(context);
                },
                label: Text("Camera",
                    style: TextStyle(color: Colors.grey.shade900)),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.transparent,
                  ),
                  overlayColor: MaterialStateProperty.all<Color>(
                    Colors.transparent,
                  ),
                ),
              ),
              TextButton.icon(
                icon: Icon(Icons.image, color: Colors.grey.shade900),
                onPressed: () {
                  takePhoto(ImageSource.gallery);
                  Navigator.pop(context);
                },
                label: Text("Gallery",
                    style: TextStyle(color: Colors.grey.shade900)),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.transparent,
                  ),
                  overlayColor: MaterialStateProperty.all<Color>(
                    Colors.transparent,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    final pickedFile = await _picker.getImage(
      source: source,
    );
    setState(() {
      _imageFile = pickedFile!;
    });
  }
}
