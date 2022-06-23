import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final Divider dividerCalendar = Divider(
  color: colorDividerTimeline,
  thickness: 0.2,
  height: 0.2,
  indent: 10,
  endIndent: 12,
);

final Widget dividerThinkness6 = Container(
  height: 6,
  color: backgroundDetails,
  margin: EdgeInsets.only(top: 2, bottom: 10),
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

// Assets
const String imageBoxTimelineWeekEmpty = 'assets/images/box_timeline_week_empty.png';
const String imageLeafTimelineWeekEmpty = 'assets/images/leaf_timeline_week_empty.png';
const String imageTimelineMonthEmpty = 'assets/images/timeline_month_empty.png';
const String iconMoreHorizontal = 'assets/icons/ic_more_horizontal.png';
const String iconMoreVertical = 'assets/icons/ic_more_vertical.png';
const String iconCalendarMonth = 'assets/icons/ic_calendar_month.png';
const String iconCalendarWeek = 'assets/icons/ic_calendar_week.png';
const String iconBack = 'assets/icons/ic_back.png';
const String iconPreviousCalendar = 'assets/icons/ic_previous_calendar.png';
const String iconNextCalendar = 'assets/icons/ic_next_calendar.png';
const String iconCheckGreen = 'assets/icons/ic_check_green.png';

// Height-width ratio
final TextStyle text13w400cBlack2 = TextStyle(
  fontSize: 13,
  fontWeight: FontWeight.w400,
  color: colorBlack2,
);
final TextStyle text14w600cBlack2 = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w600,
  color: colorBlack2,
);
final TextStyle text14w700cBlack1 = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w700,
  color: colorBlack1,
);
final TextStyle text14w700cBlack2 = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w700,
  color: colorBlack2,
);
final TextStyle text12w600cBlack2 = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w600,
  color: colorBlack2,
);

final TextStyle text13w600cBlack2 = TextStyle(
  fontSize: 13,
  fontWeight: FontWeight.w600,
  color: colorBlack2,
);

final TextStyle text10w400cGray2 = TextStyle(
  fontSize: 10,
  fontWeight: FontWeight.w400,
  color: colorGray2,
);
final TextStyle text13w400cGray2 = TextStyle(
  fontSize: 13,
  fontWeight: FontWeight.w400,
  color: colorGray2,
);
final TextStyle text15w700cBlack2 = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w700,
  color: colorBlack2,
);
final TextStyle text13w700cGray1 = TextStyle(
  fontSize: 13,
  fontWeight: FontWeight.w700,
  color: colorGray1,
);
final TextStyle text13w400cGreen2 = TextStyle(
  fontSize: 13,
  fontWeight: FontWeight.w400,
  color: colorGreen2,
);

final TextStyle text13w400cRed = TextStyle(
  fontSize: 13,
  fontWeight: FontWeight.w400,
  color: Color(0xffB31D1D),
);
Map<int, int> mapMyOfferIdToTabNumber = {
  2: 1,
  3: 1,
  4: 2,
  -2: 4,
  -3: 5,
  6: 6,
};
