import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

import '../../../../common/widget/w_height_and_width.dart';
import '../../../../common/widget/w_rounded_container.dart';
import '../detection/w_detail_content_view.dart';
import 'vo/vo_location.dart';

class ResultWidget extends StatelessWidget {
  final Location location;
  const ResultWidget(this.location, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Nav.push(DetailContentView(img_path: location.targetImagePath, site_name: location.site.name, location_name: location.location, cls:location.cls, colony:location.colony));
      },
      child: Column(
        children: [
          Line(),
          Row(
            children: [
              Image.asset(location.targetImagePath, width: 90),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ('site : ${location.site.name}').text.size(15).make().p4(),
                    ('location : ${location.location}').text.size(15).make().p4(),
                    ('colony : ${location.colony}').text.size(15).make().p4(),
                  ],
                ).pSymmetric(h: 15, v: 10),
              ),
              const Icon(Icons.navigate_next, color: Colors.black)
            ],
          ),
          Line()
        ],
      ),
    );
  }
}
