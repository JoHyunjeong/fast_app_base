import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:image_picker/image_picker.dart';

import '../../../dialog/d_confirm.dart';
import 'w_detection_app_bar.dart';
import 'w_image_stack.dart';
import 'w_switch_menu.dart';

class DetectionFragment extends StatefulWidget {
  const DetectionFragment({
    Key? key,
  }) : super(key: key);

  @override
  State<DetectionFragment> createState() => _DetectionFragmentState();
}

class _DetectionFragmentState extends State<DetectionFragment> {
  bool isPushOn = false;
  late XFile? _pickedimg = null;


  @override
  Widget build(BuildContext context) {
    return Container(
      // color: const Color(0xffe1f7fd), // 배경색
      color: Colors.white, // 배경색
      child: Stack(
        children: [
          /// stack은 위에 있는 줄이 화면상 아래 영역
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: DetectionAppBar.appBarHeight),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SwitchMenu('bacteria', 'molds', isPushOn, onTap: (isOn) {
                  setState(() {
                    isPushOn = isOn;
                  });
                }),
                height30,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Tap(
                        onTap: () {
                          // _takePhoto();
                          GetImage();
                        },
                        child: _pickedimg != null? const ImageStack():Image.asset(_pickedimg.path, width:100)),
                  ],
                ),
                height50,
                Row(
                  children: [
                    "    site     : ".text.size(18).bold.make(),
                    const SizedBox(
                      width: 200,
                      height: 30,
                      child: TextField(
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                        decoration:
                            InputDecoration(border: OutlineInputBorder(),),

                        ///Color(0xffC8E6FF)
                      ),
                    ),
                  ],
                ).pOnly(left: 32),
                height10,
                Row(
                  children: [
                    "location : ".text.size(18).bold.make(),
                    const SizedBox(
                      width: 200,
                      height: 30,
                      child: TextField(
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                        decoration:
                            InputDecoration(border: OutlineInputBorder()),
                      ),
                    ),
                  ],
                ).pOnly(left: 32),
                height50,
                Tap(
                  onTap: () async {
                    showDetectionConfirmDialog(context);
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color(0xffC8E6FF)),
                      width: 80,
                      height: 50,
                      child: Align(
                          alignment: Alignment.center,
                          child: 'Run'.text.white.bold.size(20).make())),
                )
              ],
            ).pSymmetric(h: 20),
          ),
          const DetectionAppBar(),
        ],
      ),
    );
  }

  Future<void> showDetectionConfirmDialog(BuildContext context) async {
    final confirmDialogResult = await ConfirmDialog(
      '분석을 진행하시겠습니까?',
      buttonText: "예",
      cancelButtonText: "아니오",
    ).show();
    debugPrint(confirmDialogResult?.isSuccess.toString());

    confirmDialogResult?.runIfSuccess((data) {
      context.showSnackbar('분석 완료\nresults 탭에서 결과를 확인하세요.');
    });
  }

  // void _takePhoto() async {
  //   ImagePicker().pickImage(source: ImageSource.camera).then((value) {
  //     if (value != null && value.path != null) {
  //       print("저장경로 : ${value.path}");
  //       GallerySaver.saveImage(value.path).then((value) {
  //         print('저장완료');
  //       });
  //     }
  //   });
  // }

  Future<void> GetImage() async{
    final XFile? _img = await ImagePicker().pickImage(source: ImageSource.camera);
    if (_img != null) {
      _pickedimg = _img;
    };
  }
}
