import 'package:flutter/material.dart';

import '../../configs/application.dart';
import '../../constants/slide_mode.dart';
import '../../core/routes/app_pages.dart';

Future dialogAnimationWrapper({
  SlideMode slideFrom = SlideMode.left,
  child,
  duration = 400,
  paddingTop = 0.0,
  paddingBottom = 0.0,
  backgroundColor = Colors.white,
  paddingHorizontal = 15.0,
  borderRadius = 25.0,
  dismissible = true,
  barrierColor,
  timeForDismiss,
}) {
  var beginOffset = const Offset(-1, 0);
  switch (slideFrom) {
    case SlideMode.left:
      beginOffset = const Offset(-1, 0);
      break;
    case SlideMode.right:
      beginOffset = const Offset(1, 0);
      break;
    case SlideMode.top:
      beginOffset = const Offset(0, -1);
      break;
    default:
      beginOffset = const Offset(0, 1);
      break;
  }

  if (timeForDismiss != null) {
    Future.delayed(Duration(milliseconds: timeForDismiss), () {
      Application.isShowingError = false;
      AppNavigator.pop();
    });
  }

  return showGeneralDialog(
    barrierLabel: "Barrier",
    barrierDismissible: dismissible,
    barrierColor: barrierColor ?? Colors.black.withOpacity(0.5),
    transitionDuration: Duration(milliseconds: duration),
    context: AppNavigator.context!,
    pageBuilder: (_, __, ___) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        insetPadding: EdgeInsets.only(
          left: paddingHorizontal,
          right: paddingHorizontal,
          top: paddingTop,
          bottom: paddingBottom,
        ),
        child: Container(
          constraints: const BoxConstraints(maxWidth: 330),
          child: child,
        ),
        backgroundColor: backgroundColor,
      );
    },
    transitionBuilder: (_, anim, __, child) {
      return SlideTransition(
        position: Tween(begin: beginOffset, end: const Offset(0, 0)).animate(anim),
        child: child,
      );
    },
  );
}
