import 'package:flutter/material.dart';

class AllStocksView extends StatefulWidget {
 final Column column;
  const AllStocksView({super.key, required this.column});

  @override
  State<AllStocksView> createState() => _AllStocksViewState();
}

class _AllStocksViewState extends State<AllStocksView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: widget.column,
    );
  }
}
