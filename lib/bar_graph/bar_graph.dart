import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'bar_data.dart';

class MyBarGraph extends StatelessWidget{
 // final double? maxY;
 // final double sunAmount;
 // final double monAmount;
 // final double tueAmount;
 // final double wedAmount;
 // final double thuAmount;
 // final double friAmount;
 // final double satAmount;

  // MyBarGraph({super.key,
  //   required this.maxY,
  //   required this.sunAmount,
  //   required this.monAmount,
  //   required this.tueAmount,
  //   required this.wedAmount,
  //   required this.thuAmount,
  //   required this.friAmount,
  //   required this.satAmount,
  // });

  final List weeklySummary ;
  const MyBarGraph({
    super.key,
    required this.weeklySummary,
});

  @override
  Widget build(BuildContext context){

    //initialize the bar data
    BarData myBarData = BarData(
      sunAmount: weeklySummary[0],
      monAmount: weeklySummary[1],
      tueAmount: weeklySummary[2],
      wedAmount: weeklySummary[3],
      thuAmount: weeklySummary[4],
      friAmount: weeklySummary[5],
      satAmount: weeklySummary[6]
    );

    myBarData.initializeBarData();

  return BarChart(
      BarChartData(
    maxY:100,
    minY:0,
    titlesData: FlTitlesData(
      show: true,
      topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false,)),
      leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
      rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
      bottomTitles: AxisTitles(sideTitles: SideTitles(
        showTitles: true,
        getTitlesWidget: getBottomTitles,
      ))
    ),
    gridData: FlGridData(show: false),
    borderData: FlBorderData(show: false),
    barGroups: myBarData.barData
        .map(
          (data) => BarChartGroupData(
            x: data.x,
    barRods: [
      BarChartRodData(
           toY: data.y,
         color: Color(0xff01da66),
         width: 25,
         borderSide: BorderSide(
           color: Colors.white,
           width: 1
         ),
         borderRadius: BorderRadius.only(topRight: Radius.circular(2),topLeft: Radius.circular(2)),
         backDrawRodData: BackgroundBarChartRodData(
           show: true,
           toY:100,
          color: Color(0xffffff),
         )

      // toY: data.y

      )
      ],
     ),
    )
      .toList(),
  )
  );
}
}

Widget getBottomTitles(double value, TitleMeta meta){
  const style= TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 14
  );
  Widget text;
  switch (value.toInt()) {
    case 0:
      text = const Text("S",style: style,);
      break;
    case 1:
      text = const Text("M",style: style,);
      break;
      case 2:
    text = const Text("T",style: style,);
    break;
    case 3:
    text = const Text("W",style: style,);
    break;
    case 4:
    text = const Text("T",style: style,);
    break;
    case 5:
    text = const Text("F",style: style,);
    break;
    case 6:
      text = const Text("S",style: style,);
      break;
    default: text = const Text(" ",style: style,);
    break;
  }
return SideTitleWidget(
    child: text,
    axisSide: meta.axisSide);

}