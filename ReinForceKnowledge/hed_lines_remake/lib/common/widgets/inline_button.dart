import 'package:flutter/material.dart';
import 'package:hed_lines_remake/common/widgets/touchable_opacity.dart';

import '../style/app_styles.dart';

// ignore: must_be_immutable
class InlineButton extends StatefulWidget {
  Function? onTap;
  Function? onLongPress;
  Widget? leading;
  String title;
  final Color? backgroundColor;
  final Color? textColor;
  final TextStyle? textStyle;
  final Color? borderColor;
  final double? radius;
  final double? horizontal;
  final double? height;
  final MainAxisSize mainAxisSize;
  final bool isLoading;
  InlineButton({
    Key? key,
    required this.onTap,
    required this.onLongPress,
    required this.leading,
    required this.title,
    this.backgroundColor,
    this.textColor,
    this.borderColor,
    this.textStyle,
    this.radius,
    this.horizontal,
    this.height,
    required this.mainAxisSize,
    this.isLoading = false,
  }) : super(key: key);

  @override
  State<InlineButton> createState() => _InlineButtonState();
}

class _InlineButtonState extends State<InlineButton> {
  @override
  Widget build(BuildContext context) {
    return TouchableOpacity(
      onTap: widget.onTap,
      onLongPress: widget.onLongPress,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: widget.horizontal ?? 8),
        height: widget.height ?? 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.radius ?? 5),
          color: widget.backgroundColor ?? Colors.transparent,
          border: Border.all(color: widget.borderColor ?? Colors.blueAccent),
        ),
        child: Row(
          mainAxisSize: widget.mainAxisSize,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (widget.leading != null) widget.leading!,
            if (widget.mainAxisSize == MainAxisSize.min) const Spacer(),
            widget.isLoading
                ? SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                      widget.textColor ?? Colors.white,
                    )),
                  )
                : Text(
                    widget.title,
                    style: widget.textStyle ??
                        text14w500Blue.copyWith(
                          color: widget.textColor ?? const Color(0xff0953AD),
                        ),
                    overflow: TextOverflow.ellipsis,
                  ),
            if (widget.mainAxisSize == MainAxisSize.min) const Spacer(),
          ],
        ),
      ),
    );
  }
}
