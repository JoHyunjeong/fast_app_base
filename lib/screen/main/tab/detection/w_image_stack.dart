import 'package:flutter/material.dart';

class ImageStack extends StatelessWidget {
  const ImageStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: 250, ///3개 -> 110
            height: 250, ///3개 -> 110
            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
            // color: const Color(0xffCECBCB),
            child: const Icon(Icons.image, size: 100, color: Colors.grey)),
        const Positioned.fill(
            child: Align(
                alignment: Alignment.topRight,
                child: Icon(Icons.close, size: 20, color: Colors.grey))),
      ],
    );
  }
}
