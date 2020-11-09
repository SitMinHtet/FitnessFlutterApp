import 'package:fitnessApp/size_config.dart';
import 'package:flutter/material.dart';

class WeeklyBarChart extends StatelessWidget {

  final List<int> weeklyData;
  const WeeklyBarChart({Key key, this.weeklyData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.blockSizeVertical*20,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}
