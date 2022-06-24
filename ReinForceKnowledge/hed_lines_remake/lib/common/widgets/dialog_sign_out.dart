import 'package:flutter/material.dart';
import 'package:hed_lines_remake/common/widgets/inline_button.dart';

import '../../core/routes/app_pages.dart';
import '../style/app_styles.dart';

class DialogSignOut extends StatelessWidget {
  final String? title;
  final String? cancelText;
  final String? confirmText;
  final String? bodyText;
  final Color bodyColor;
  final Function onConfirmed;
  final bool hasTextShadow;

  const DialogSignOut({
    Key? key,
    this.title,
    this.cancelText,
    this.confirmText,
    this.bodyText,
    required this.bodyColor,
    required this.onConfirmed,
    required this.hasTextShadow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 20,
        right: 22,
        bottom: 8,
        left: 22,
      ),
      decoration: BoxDecoration(
        color: colorDialogBackGround,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          title != null
              ? Text(
                  "Cảnh báo",
                  style: TextStyle(
                    fontSize: 20,
                    color: backgroundPrimaryColor,
                    fontWeight: FontWeight.w700,
                    height: 1.36,
                  ),
                )
              : const SizedBox(),
          title != null ? SizedBox(height: 8) : const SizedBox(),
          SizedBox(height: 8),
          bodyText != null
              ? Text(
                  bodyText!,
                  style: text14w500Blue,
                  textAlign: TextAlign.center,
                )
              : const SizedBox(),
          SizedBox(height: 8),
          SizedBox(
            width: 180,
            height: 36,
            child: InlineButton(
              onTap: () {
                onConfirmed.call();
                AppNavigator.pop();
              },
              onLongPress: null,
              leading: null,
              title: "Có",
              mainAxisSize: MainAxisSize.max,
              backgroundColor: backgroundPrimaryColor,
              textStyle: text14w700Blue.copyWith(color: colorWhite),
            ),
          ),
          SizedBox(height: 8),
          SizedBox(
            width: 180,
            height: 36,
            child: InlineButton(
              onTap: () {
                AppNavigator.pop();
              },
              onLongPress: null,
              leading: null,
              title: "Không",
              mainAxisSize: MainAxisSize.max,
              textStyle: text14w700Blue,
            ),
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
