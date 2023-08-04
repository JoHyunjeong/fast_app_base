import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

import '../../../../common/widget/w_empty_expanded.dart';
import '../../../dialog/d_confirm.dart';

class DetectionAppBar extends StatefulWidget {
  static const double appBarHeight = 60;

  const DetectionAppBar({super.key});

  @override
  State<DetectionAppBar> createState() => _DetectionAppBarState();
}

class _DetectionAppBarState extends State<DetectionAppBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: DetectionAppBar.appBarHeight,
            color: context.appColors.appBarBackground,
            child: Row(
              children: [
                width20,
                Image.asset('$basePath/icon/kca_logo.png', height: 30),
              ],
            )),
        Line(color: context.appColors.appBarLine ,height: 3,),
      ],
    );
  }



}
