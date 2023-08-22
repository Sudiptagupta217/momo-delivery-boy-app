import 'package:flutter/material.dart';

class LowStocksView extends StatefulWidget {
 final Column column;
  const LowStocksView({super.key, required this.column});

  @override
  State<LowStocksView> createState() => _LowStocksViewState();
}

class _LowStocksViewState extends State<LowStocksView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: widget.column,
    );
  }
}
