import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_empty_expanded.dart';
import 'package:flutter/material.dart';

class SwitchMenu extends StatelessWidget {
  final String title1;
  final String title2;
  final bool isOn;
  final ValueChanged<bool> onTap;

  const SwitchMenu(this.title1, this.title2, this.isOn, {super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        title1.text.bold.make(),
        Switch(
          activeColor: Colors.yellow,
          inactiveTrackColor: Colors.yellow,
          value: isOn,
          onChanged: onTap,
        ),
        title2.text.bold.make()
      ],
    ).p20();
  }
}
