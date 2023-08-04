import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/s_main.dart';
import 'package:flutter/material.dart';
import '../detection/w_switch_menu.dart';
import 'location_dummy.dart';
import 'w_result_app_bar.dart';
import 'w_result.dart';

class ResultFragment extends StatefulWidget {
  const ResultFragment({
    Key? key,
  }) : super(key: key);

  @override
  State<ResultFragment> createState() => _ResultFragmentState();
}

class _ResultFragmentState extends State<ResultFragment> {
  bool isPushOn = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // 배경색
      child: Stack(
        children: [
          RefreshIndicator(
            edgeOffset: ResultAppBar.appBarHeight,
            onRefresh: () async{
              await sleepAsync(500.ms);
            },
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(top: ResultAppBar.appBarHeight, bottom: MainScreenState.bottomNavigatorHeight),
              child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SwitchMenu('bacteria','molds', isPushOn, onTap:(isOn) {
                        setState(() {
                          isPushOn = isOn;
                        });
                      }),
                      ...locations.map((e) => ResultWidget(e)).toList(),
                   ]).pSymmetric(h: 20),
                  ),
               ),
          const ResultAppBar(),
        ],
      ),
    );
  }
}
