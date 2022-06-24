import 'package:flutter/material.dart';
import 'package:hed_lines_remake/common/widgets/touchable_opacity.dart';

import '../../core/routes/app_pages.dart';
import '../style/app_styles.dart';

class DialogConfirmCancel extends StatelessWidget {
  const DialogConfirmCancel(
      {Key? key,
      required this.onConfirmed,
      this.bodyBefore,
      this.bodyAfter,
      this.highlightText,
      this.title,
      this.titleColor = colorBlack1,
      this.bodyColor = colorBlack1,
      this.highlightColor = colorGreen2,
      this.confirmText,
      this.cancelText,
      this.hasTextShadow = false,
      this.beforeTextAlign = TextAlign.justify})
      : assert(
          bodyBefore != null || bodyAfter != null,
          'The body before and the body after can not both be null.',
        ),
        super(key: key);

  final String? title;
  final String? bodyBefore;
  final String? bodyAfter;
  final String? highlightText;
  final String? cancelText;
  final String? confirmText;
  final Color titleColor;
  final Color bodyColor;
  final Color highlightColor;
  final Function onConfirmed;
  final bool hasTextShadow;
  final TextAlign beforeTextAlign;

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
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title != null
              ? Text(
                  title!,
                  style: TextStyle(
                    fontSize: 15,
                    color: titleColor,
                    fontWeight: FontWeight.w600,
                    height: 1.36,
                  ),
                )
              : SizedBox(),
          title != null ? SizedBox(height: 8) : SizedBox(),
          RichText(
            textAlign: beforeTextAlign,
            text: TextSpan(
              style: TextStyle(fontSize: 13, height: 1.625),
              children: [
                TextSpan(
                  text: bodyBefore,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: bodyColor,
                  ),
                ),
                highlightText != null
                    ? TextSpan(
                        text: ' $highlightText ',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: highlightColor,
                        ),
                      )
                    : TextSpan(),
                TextSpan(
                  text: bodyAfter,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: bodyColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8),
          Container(
            height: 48,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                cancelText != null
                    ? TouchableOpacity(
                        onTap: () => AppNavigator.pop(),
                        child: Text(
                          cancelText!.toUpperCase(),
                          style: TextStyle(
                            color: colorBlack2,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )
                    : SizedBox(),
                SizedBox(width: 38),
                TouchableOpacity(
                  onTap: onConfirmed,
                  child: Text(
                    confirmText ?? 'Strings.confirm.i18n.toUpperCase()',
                    style: TextStyle(
                      color: colorGreen2,
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      shadows: hasTextShadow
                          ? <Shadow>[
                              Shadow(
                                offset: Offset(2.0, 3.0),
                                blurRadius: 2.0,
                                color: Colors.grey.shade300,
                              ),
                            ]
                          : [],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
