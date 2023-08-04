import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/result/location_dummy.dart';
import 'package:flutter/material.dart';

class DetailContentView extends StatelessWidget {
  const DetailContentView({super.key, required this.img_path, required this.site_name, required this.location_name, required this.cls, required this.colony});
  final String img_path;
  final String site_name;
  final String location_name;
  final String cls;
  final int colony;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: cls.text.make(), backgroundColor: Color(0xff7398C9)),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            height20,
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.edit, size: 30),
                width10,
                Icon(Icons.delete, size: 30),
              ],
            ).pOnly(right:10),
            height30,
            Image.asset(img_path, height:370),
            // Container(width: 350, height: 350, color: Colors.red),
            height30,
            Column(
              children: [
                Row(
                  children: ['site : ${site_name}'.text.size(20).bold.make()],
                  // children: ['site:${location.site.name}'.text.size(20).bold.make()],
                ).p8(),
                Row(
                  children: ['location : ${location_name}'.text.size(20).bold.make()],
                ).p8(),
                Row(
                  children: ['colony : ${colony}'.text.size(20).bold.make()],
                ).p8(),
              ],
            ).pSymmetric(h:10),
          ],
        ));
  }
}
