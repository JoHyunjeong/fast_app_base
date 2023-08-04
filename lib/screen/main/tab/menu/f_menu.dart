import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import '../../../../common/widget/w_big_button.dart';
import 'opensource/s_opensource.dart';
import 's_account.dart';
import 'w_menu_app_bar.dart';

class MenuFragment extends StatefulWidget {
  const MenuFragment({super.key});

  @override
  State<MenuFragment> createState() => _MenuFragmentState();
}

class _MenuFragmentState extends State<MenuFragment> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // 배경색
      child: Stack(
        children: [
          SingleChildScrollView(
              padding: const EdgeInsets.only(top: MenuAppBar.appBarHeight),
              child: Column(
                children: [
                  height20,
                  BigButton('계정', onTap: () async {
                    Nav.push(AccountScreen());
                  },),
                  height10,
                  BigButton('오픈소스',
                    onTap: () async {
                      Nav.push(OpensourceScreen());
                  },),
                ],
              ).pSymmetric(h:10)
          ),
          const MenuAppBar(),
        ],
      ),
    );
  }
}
