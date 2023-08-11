import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class CustomSwitch extends StatefulWidget {
  bool value;

  CustomSwitch(
      {Key? key,
      required this.value,
     })
      : super(key: key);

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool _value = false;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      width: 25.0,
      height: 13.0,
      valueFontSize: 1.0,
      toggleSize: 12.0,
      padding: 1,
      activeToggleColor: Colors.green,
      inactiveToggleColor: Colors.grey,
      activeColor:Colors.white,
      inactiveColor:Colors.grey.shade100 ,
      value: widget.value,
      onToggle: (val) {
        setState(() {
          widget.value = val;
        });
      },
    );
  }
}
