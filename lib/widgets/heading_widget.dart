import 'package:fitnessApp/contants.dart';
import 'package:fitnessApp/size_config.dart';
import 'package:flutter/material.dart';

class HeadingWidget extends StatelessWidget {

  final String text1;
  final String text2;
  const HeadingWidget({Key key, this.text1, this.text2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.blockSizeHorizontal*90,
      margin: EdgeInsets.symmetric(vertical: SizeConfig.blockSizeVertical*2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text1,
            style: TextStyle(
              color: CustomColors.kPrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
          ),
          Text(
            text2,
            style: TextStyle(
                color: CustomColors.kPrimaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 16
            ),
          )
        ],
      ),
    );
  }
}
