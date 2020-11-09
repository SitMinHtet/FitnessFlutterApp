import 'package:fitnessApp/contants.dart';
import 'package:fitnessApp/size_config.dart';
import 'package:fitnessApp/widgets/heading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashBoardScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.blockSizeVertical*90,
      child: Column(
        children: [
          _buildDaysBar(), _buildDashboardCards()
        ],
      ),
    );
  }

  Widget _buildDaysBar(){
    return Container(
      margin: EdgeInsets.only( top: SizeConfig.blockSizeVertical*2, bottom: SizeConfig.blockSizeVertical*2 ),
      width: double.infinity,

      child: Row(
        mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Today",style: CustomTextStyle.dayTabBarStyleActive,
          ),
          Text(
            "Week",style: CustomTextStyle.dayTabBarStyleInactive,
          ),
          Text(
            "Month",style: CustomTextStyle.dayTabBarStyleInactive,
          ),
          Text(
            "Year",style: CustomTextStyle.dayTabBarStyleInactive,
          )
        ],
      ),
    );
  }

  Widget _buildDashboardCards(){
    return Expanded(
      child:  Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        decoration: BoxDecoration(
          color: CustomColors.kBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20)
          )
        ),
        child: ListView(
          children: [

            HeadingWidget(
              text1: "Activity",text2: "Show All",
            ),

            _buildCard(
                CustomColors.kLightPinkColor,
                'RUNNING',
                '2500',
                '4000',
                0.3,
                'assets/icons/running.svg'
            ),
            _buildCard(
                CustomColors.kLightPinkColor,
                'WALKING',
                '3500',
                '860',
                0.6,
                'assets/icons/foot.svg'
            ),
            _buildCard(
                CustomColors.kLightPinkColor,
                'SWIMMING',
                '3500',
                '8500',
                0.8,
                'assets/icons/swim.svg'
            ),

          ],
        ),
      ),
    );
  }

  Container _buildCard(Color color,String metricType, String metricCount1, String metricCount2, double value, String iconPath){
    return Container(
      padding: EdgeInsets.all(20),
      height: SizeConfig.blockSizeVertical*30,
      margin: EdgeInsets.symmetric(vertical: SizeConfig.blockSizeVertical*1),
      decoration: BoxDecoration(
        color: CustomColors.kPrimaryColor,
        borderRadius: BorderRadius.circular(20)
      ),

      child: Stack(
        children: [
          Positioned(
            top: SizeConfig.blockSizeVertical*3,
            left: SizeConfig.blockSizeHorizontal*6,
            child: Container(
              child: Row(
                children: [
                  SvgPicture.asset(iconPath,height: SizeConfig.blockSizeVertical*5,color: Colors.white,),
                  SizedBox(width: SizeConfig.blockSizeVertical*1,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        metricType,style: TextStyle(color: CustomColors.kLightPinkColor),
                      ),
                      Text(
                        metricCount1,
                        style: CustomTextStyle.metricTextStyle,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: SizeConfig.blockSizeVertical*1,
              width: SizeConfig.blockSizeHorizontal*75,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: LinearProgressIndicator(
                  value: value,
                  valueColor: AlwaysStoppedAnimation(Colors.white),
                  backgroundColor: CustomColors.kLightPinkColor,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: SizeConfig.blockSizeVertical * 5,
            left: SizeConfig.blockSizeHorizontal * 6,
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(metricCount2, style: CustomTextStyle.metricTextStyle,),
                  SizedBox(width: SizeConfig.blockSizeHorizontal*1,),
                  Text('m', style: TextStyle(color: CustomColors.kLightColor, fontSize: 25),)
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }


}