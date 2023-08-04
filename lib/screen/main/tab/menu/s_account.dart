import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

import '../../../../common/widget/w_big_button.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:'계정'.text.make(), backgroundColor: Color(0xff7398C9)),
      body: Container(
        padding: EdgeInsets.only(top: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.account_circle, size:200, color: Colors.grey),
              ],
            ),
            height20,
            '회사명 : 주식회사 케이씨에이'.text.size(20).make(),
            height5,
            '메일주소 : hjjo@kca21.com'.text.size(20).make(),
            height5,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){}, child: '비밀번호 바꾸기'.text.color(context.appColors.text).make(),),
              ],
            )
          ],
        ).pSymmetric(h:40),
      )
    );
  }
}
