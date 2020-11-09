import 'package:fitnessApp/contants.dart';
import 'package:fitnessApp/size_config.dart';
import 'package:fitnessApp/widgets/indicator_widget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ActivityPieChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.all(10),
      height: SizeConfig.blockSizeVertical*25,
      width: double.infinity,

      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),

        child: Row(
          children: [
            Container(
              width: SizeConfig.blockSizeHorizontal*60,

              child: PieChart(
                  PieChartData(
                      centerSpaceRadius: 35,
                      startDegreeOffset: -120,
                      sectionsSpace: 0,
                      borderData: FlBorderData(
                        show: false,
                      ),
                      sections: [
                        PieChartSectionData(
                          value: 35,
                          color: CustomColors.kPrimaryColor,
                          title: "35%",
                        ),
                        PieChartSectionData(
                          value: 35,
                          color: CustomColors.kCyanColor,
                          title: "15%",
                        ),
                        PieChartSectionData(
                          value: 35,
                          color: CustomColors.kLightColor,
                          title: "45%",
                        )
                      ]
                  )
              ),
            ),

            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: SizeConfig.blockSizeVertical*3),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Indicator(
                      iconPath: 'assets/icons/running.svg',
                      title: 'RUNNING',
                      subTitle: '10 km',
                      color: CustomColors.kPrimaryColor,
                    ),
                    Indicator(
                      iconPath: 'assets/icons/bike.svg',
                      title: 'CYCLING',
                      subTitle: '10 km',
                      color: CustomColors.kCyanColor,
                    ),
                    Indicator(
                      iconPath: 'assets/icons/swim.svg',
                      title: 'SWIMMING',
                      subTitle: '10 km',
                      color: CustomColors.kLightColor,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
