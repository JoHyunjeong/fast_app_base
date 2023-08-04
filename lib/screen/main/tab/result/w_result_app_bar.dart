import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

import '../../../../common/widget/w_empty_expanded.dart';
import '../../../dialog/d_confirm.dart';



class ResultAppBar extends StatefulWidget {
  static const double appBarHeight = 60;

  const ResultAppBar({super.key});

  @override
  State<ResultAppBar> createState() => _ResultAppBarState();
}

class _ResultAppBarState extends State<ResultAppBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: ResultAppBar.appBarHeight,
            color: context.appColors.appBarBackground,
            child: Row(
              children: [
                width20,
                Image.asset('$basePath/icon/kca_logo.png', height: 30),
                emptyExpanded,
                IconButton(
                  icon: const Icon(Icons.delete),
                  color: context.appColors.iconButton,
                  onPressed: () async {
                    showDeleteConfirmDialog(context);
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.ios_share),
                  color: context.appColors.iconButton,
                  onPressed: () async {
                    showSendConfirmDialog(context);
                  },
                ),
                width20,
              ],
            )),
        Line(color: context.appColors.appBarLine ,height: 3,),
      ],
    );
  }

  Future<void> showDeleteConfirmDialog(BuildContext context) async {
    final confirmDialogResult = await ConfirmDialog(
      '결과를 모두 삭제하시겠습니까?',
      buttonText: "예",
      cancelButtonText: "아니오",
    ).show();
    debugPrint(confirmDialogResult?.isSuccess.toString());

    confirmDialogResult?.runIfSuccess((data) {
      context.showSnackbar('삭제 완료');
    });
  }

  Future<void> showSendConfirmDialog(BuildContext context) async {
    final confirmDialogResult = await ConfirmDialog(
      '결과를 메일로 전송하시겠습니까?',
      buttonText: "보내기",
      cancelButtonText: "취소",
    ).show();
    debugPrint(confirmDialogResult?.isSuccess.toString());

    confirmDialogResult?.runIfSuccess((data) {
      context.showSnackbar('전송 완료');
    });
  }
}
