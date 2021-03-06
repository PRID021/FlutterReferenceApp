import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final AppBar appBarCalendar = AppBar(
  backgroundColor: Colors.transparent,
  elevation: 0.0,
  systemOverlayStyle: const SystemUiOverlayStyle(
    statusBarBrightness: Brightness.dark,
  ),
);

const Divider dividerCalendar = Divider(
  color: colorDividerTimeline,
  thickness: 0.2,
  height: 0.2,
  indent: 10,
  endIndent: 12,
);

final Widget dividerThinkness6 = Container(
  height: 6,
  color: backgroundDetails,
  margin: const EdgeInsets.only(top: 2, bottom: 10),
);

final Widget dividerThinkness6NotMargin = Container(
  height: 6,
  color: backgroundDetails,
);

const Color colorGray1 = Color(0xFF6E6D7A);
const Color colorGray2 = Color(0xFFACACB9);
const Color colorBlack1 = Color(0xFF0D0C22);
const Color colorBlack2 = Color(0xFF3D3D4E);

const Color colorGreen2 = Color(0xFF2B6B64);
const Color colorGreen3 = Color(0xFF5EA199);
const Color colorGreen4 = Color(0xffBAD7C9);
const Color colorGreen5 = Color(0xFFE2F0E9);
const Color colorGreenTimeline = Color(0xFF59ADA4);
const Color colorStatusTimeline = Color(0xFF167BA7);
const Color colorTimelineCardShimmer = Color(0xFFFAFAFA);
const Color colorBorderPicked = Color(0xFF2B6B64);
const Color colorDividerTimeline = Color(0xFFC5D0CF);
const Color colorDotBelowDate = Color(0xFFBAD8C9);
const Color headerCalendarColor = Color(0xFF1C4843);
const Color backgroundCalendarCardGray = Color(0xFFE5E5E5);
const Color backgroundCalendarCardYellow = Color(0xFFEFF1E0);
const Color backgroundTimelineDone = Color(0xFFF9F9F9);
const Color backgroundNotification = Color(0xFFF0F6F6);
const Color backgroundDetails = Color(0xFFF5F5F5);
const Color colorProcessing = Color(0xFFFFB800);

const colorBackgroundBadges = Color(0xFFF6C8AB);
const colorGrayBorder = Color(0xFFC5C5D0);
const colorBlack4 = Color(0xFFA9AAB8);
const colorBlack3 = Color(0xFF333333);
const colorCaptionSearch = Color(0xFFA3A3A3);
const colorTextChatCard = Color(0xFF53596F);
const colorTimeChat = Color(0xFF9897A0);
const colorBackgroundReceiver = Color(0xFFE2F0E9);
const colorBackgroundSender = Color(0xFFF1F1F1);
const colorTextSender = Color(0xFF53596F);
const colorTextAppointmentCard = Color(0xFFFDFDFD);
const colorFontGreen = Color(0xFF1C4843);
const colorDelete = Color(0xFFFE5252);
const colorMoreChat = Color(0xFF6E6E7A);
const colorBackgroundCall = Color(0xFFE9F4EE);
const colorBackgroundReceiverInCall = Color(0xFF393D4F);
const colorHintTextInCall = Color(0xFF9897A0);

const Color colorAddButton = Color(0xFFF0F6F6);
const Color colorFinished = Color(0xFFB31D1D);
const Color colorRequestCard = Color(0xFFFFFFFF);
const Color colorFocusItemDropdown = Color(0xFFE2F0E9);
const Color colorGrey3 = Color(0xFFE3E3E3);
const Color colorChosen = Color(0xFF167BA7);
const Color colorChosenCard = Color(0xFFF0F6F6);
const Color colorNotChosenCard = Color(0xFFF7E8E8);

const colorWhite = Color(0xFFFFFFFF);
const colorDisableTimeButton = Color(0xFFF5F5F5);
var backgroundPrimaryColor = const Color(0xFF0953AD);
const colorDialogBackGround = Color(0xFFFFFFFF);

const TextStyle text13w400cBlack2 = TextStyle(
  fontSize: 13,
  fontWeight: FontWeight.w400,
  color: colorBlack2,
);

const TextStyle text14w600cBlack2 = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w600,
  color: colorBlack2,
);
const TextStyle text14w700cBlack1 = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w700,
  color: colorBlack1,
);
const TextStyle text14w700cBlack2 = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w700,
  color: colorBlack2,
);
const TextStyle text12w600cBlack2 = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w600,
  color: colorBlack2,
);
const TextStyle text12w400cFontGreen = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w400,
  color: colorFontGreen,
);
const TextStyle text12w400cFinished = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w400,
  color: colorFinished,
);
const TextStyle text13w600cBlack2 = TextStyle(
  fontSize: 13,
  fontWeight: FontWeight.w600,
  color: colorBlack2,
);
const TextStyle text13w700cWhite = TextStyle(
  fontSize: 13,
  fontWeight: FontWeight.w700,
  color: colorWhite,
);

const TextStyle text10w400cGray2 = TextStyle(
  fontSize: 10,
  fontWeight: FontWeight.w400,
  color: colorGray2,
);
const TextStyle text13w400cGray2 = TextStyle(
  fontSize: 13,
  fontWeight: FontWeight.w400,
  color: colorGray2,
);
const TextStyle text15w700cBlack2 = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w700,
  color: colorBlack2,
);
const TextStyle text13w700cGray1 = TextStyle(
  fontSize: 13,
  fontWeight: FontWeight.w700,
  color: colorGray1,
);
const TextStyle text13w400cGreen2 = TextStyle(
  fontSize: 13,
  fontWeight: FontWeight.w400,
  color: colorGreen2,
);
const TextStyle text13w400cFontGreen = TextStyle(
  fontSize: 13,
  fontWeight: FontWeight.w400,
  color: colorFontGreen,
);
const TextStyle text13w400cRed = TextStyle(
  fontSize: 10.5,
  fontWeight: FontWeight.w400,
  color: Color(0xffB31D1D),
);

const TextStyle text56w400Blue = TextStyle(
  fontSize: 53,
  fontWeight: FontWeight.w400,
  letterSpacing: 1,
  color: Color(0xff0953AD),
  fontStyle: FontStyle.normal,
);
const TextStyle text20w400Blue = TextStyle(
  fontSize: 17,
  fontWeight: FontWeight.w400,
  color: Color(0xff0953AD),
  fontStyle: FontStyle.normal,
);

const TextStyle text14w500Blue = TextStyle(
  fontWeight: FontWeight.w500,
  color: Color(0xff0953AD),
  fontStyle: FontStyle.normal,
);

const TextStyle text24w700Blue = TextStyle(
  fontSize: 21,
  fontWeight: FontWeight.w700,
  color: Color(0xff0953AD),
  fontStyle: FontStyle.normal,
);

const TextStyle text14w700Blue = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w700,
  color: Color(0xff0953AD),
  fontStyle: FontStyle.normal,
);

const TextStyle text24w700Black = TextStyle(
  fontSize: 21,
  fontWeight: FontWeight.w700,
  color: colorBlack1,
  fontStyle: FontStyle.normal,
);

const TextStyle text10w400Black = TextStyle(
  fontSize: 8.5,
  fontWeight: FontWeight.w500,
  color: colorBlack1,
  fontStyle: FontStyle.normal,
);
const TextStyle text14w500Black = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w500,
  color: colorBlack1,
  fontStyle: FontStyle.normal,
);

const TextStyle text14w700White = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w500,
  color: colorWhite,
  fontStyle: FontStyle.normal,
);

const TextStyle text10w700White = TextStyle(
  fontSize: 8.5,
  fontWeight: FontWeight.w700,
  color: colorWhite,
  fontStyle: FontStyle.normal,
);
final TextStyle text10w400Blue = TextStyle(
  fontSize: 8.5,
  fontWeight: FontWeight.w400,
  color: backgroundPrimaryColor,
  fontStyle: FontStyle.normal,
);

const TextStyle text14w500Grey = TextStyle(
  fontSize: 11,
  fontWeight: FontWeight.w500,
  color: Color(0xff999999),
  fontStyle: FontStyle.normal,
);

const TextStyle text16w600Blue = TextStyle(
  fontSize: 12.5,
  fontWeight: FontWeight.w600,
  color: Color(0xff0953AD),
  fontStyle: FontStyle.normal,
);
