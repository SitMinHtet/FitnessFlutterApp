import 'package:fitnessApp/contants.dart';
import 'package:fitnessApp/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Indicator extends StatelessWidget {

  final Color color;
  final String title;
  final String subTitle;
  final String iconPath;
  const Indicator({Key key, this.color, this.title, this.subTitle, this.iconPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
          children: [

            SvgPicture.asset(
              iconPath,
              height: SizeConfig.blockSizeHorizontal*6,
              color: color,
            ),
            SizedBox(
              width: SizeConfig.blockSizeHorizontal*1,
            ),
            Column(
              children: [
                Text(
                  title,
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Text(
                  subTitle,
                  style: TextStyle(color: CustomColors.kLightColor, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        ),
    );
  }
}
