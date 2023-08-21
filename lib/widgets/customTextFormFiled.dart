import 'package:flutter/material.dart';

import '../utils/default_colors.dart';

class CustomTextFormFiled extends StatefulWidget {
  final String hintText;
  String? text;
  double height;
  IconData? icons;
  IconData? suficons;
  Function? onTap;
  final TextInputType? keytype;

  CustomTextFormFiled(
      {Key? key,
      required this.hintText,
      this.text,
      this.onTap,
      this.icons,
      this.suficons,
      required this.keytype,
      this.height = 60})
      : super(key: key);

  @override
  State<CustomTextFormFiled> createState() => _CustomTextFormFiledState();
}

class _CustomTextFormFiledState extends State<CustomTextFormFiled> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.text !=
              null) // Render the Text widget only if text is not null
            Text(widget.text!, style: TextStyle(color: Colors.white70)),
          widget.text != null
              ? SizedBox(
                  height: 5,
                )
              : Container(),
          TextFormField(
            keyboardType: widget.keytype,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              prefixIcon: widget.icons != null
                  ? Icon(
                      widget.icons,
                      color: Colors.white70,
                      size: 29,
                    )
                  : null,
              suffixIcon: widget.suficons != null
                  ? InkWell(
                      onTap: () {
                        widget.onTap!();
                      },
                      child: Icon(
                        widget.suficons,
                        color: Colors.white70,
                        size: 19,
                      ))
                  : null,
              hintText: widget.hintText,
              hintStyle: const TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                  fontFamily: "Raleway",
                  fontWeight: FontWeight.w600),
              contentPadding: EdgeInsets.symmetric(vertical: 1, horizontal: 10),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 1,
                  color: Colors.white24,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 1,
                  color: Colors.white24,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
