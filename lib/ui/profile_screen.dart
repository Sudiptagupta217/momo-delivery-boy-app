import 'package:flutter/material.dart';

import '../utils/default_colors.dart';
import '../widgets/buttom_manu.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int selectedIndex = 3;
  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
      bottomNavigationBar: BottomMenu(
        selectedIndex: selectedIndex,
        onClicked: onClicked,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text("Profile page",style: TextStyle(fontSize: 120),),

          ],
        ),
      ),
    );
  }
}