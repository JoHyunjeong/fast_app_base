import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'detection/f_detection.dart';
import 'menu/f_menu.dart';
import 'result/f_result.dart';

enum TabItem {
  detection(Icons.search, 'detection', DetectionFragment()),
  result(Icons.list_alt, 'results', ResultFragment()),
  menu(Icons.menu, 'menu', MenuFragment());

  final IconData activeIcon;
  final IconData inActiveIcon;
  final String tabName;
  final Widget firstPage;

  const TabItem(this.activeIcon, this.tabName, this.firstPage, {IconData? inActiveIcon})
      : inActiveIcon = inActiveIcon ?? activeIcon;

  BottomNavigationBarItem toNavigationBarItem(BuildContext context, {required bool isActivated}) {
    return BottomNavigationBarItem(
        icon: Icon(
          key: ValueKey(tabName),
          isActivated ? activeIcon : inActiveIcon,
          color:
              isActivated ? context.appColors.iconButton : context.appColors.iconButtonInactivate,
        ),
        label: tabName);
  }
}
