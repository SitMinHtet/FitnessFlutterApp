import 'package:fitnessApp/contants.dart';
import 'package:fitnessApp/size_config.dart';
import 'package:fitnessApp/widgets/activity_pie_chart.dart';
import 'package:fitnessApp/widgets/heading_widget.dart';
import 'package:fitnessApp/widgets/weekly_bar_chart.dart';
import 'package:flutter/material.dart';

class MetricScreen extends StatelessWidget {

  final List<int> weeklyData = [10, 12, 4, 16, 20, 16, 14];
  final List<int> hourlyData = [5,7,10,11,17,18,14,15,12,11,8,7,11,19,6,8,10,12,18,16,14,17,11,13];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: SizeConfig.blockSizeVertical*82,
      width: double.infinity,
      decoration: BoxDecoration(
        color: CustomColors.kBackgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20)
        )
      ),
      child: Column(
        children: [
          HeadingWidget(
            text1: 'EXERCISES',
            text2: '',
          ),
          ActivityPieChart(),
          HeadingWidget(
            text1: 'GOAl COMPILANCE',
            text2: '',
          ),
          WeeklyBarChart(),
          HeadingWidget(
            text1: 'EXERCISE EVG',
            text2: '',
          )
        ],
      ),
    );
  }
}
