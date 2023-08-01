import 'package:flutter/material.dart';
import 'package:it_momo_wala/utils/default_colors.dart';

import '../widgets/buttom_manu.dart';

class EarningScreen extends StatefulWidget {
  const EarningScreen({super.key});

  @override
  State<EarningScreen> createState() => _EarningScreenState();
}

class _EarningScreenState extends State<EarningScreen> {
  int selectedIndex = 2;
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
          children: const [
            Text("Earning page",style: TextStyle(fontSize: 120),),

          ],
        ),
      ),
    );
  }
}