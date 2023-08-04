import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

import 'w_arrow.dart';
import 'w_rounded_container.dart';

class BigButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const BigButton(this.text, {super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Tap(
      onTap: onTap,
      child: RoundedContainer(
        backgroundColor: context.appColors.buttonBackgound,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            text.text.color(context.appColors.text).size(18).bold.make(),
            const Arrow(),
          ],
        ),
      ),
    );
  }
}
