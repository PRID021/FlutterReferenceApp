import 'package:flutter/material.dart';
import 'package:i18n_extension/i18n_widget.dart';

import '../core/routes/app_pages.dart';
import '../features/app/data/datasources/local_data/local_storage.dart';

class LanguageService {
  ///Default Language
  static const locale = Locale('vi', 'VN');

  ///List Language support in Application
  static List<Locale> supportLanguage = [
    const Locale("en"),
    const Locale("vi"),
    const Locale("da"),
    const Locale("de"),
    const Locale("el"),
    const Locale("fr"),
    const Locale("id"),
    const Locale("ja"),
    const Locale("ko"),
    const Locale("nl"),
    const Locale("zh"),
    const Locale("ru"),
  ];

  switchLanguage() async {
    await LocalStorage().saveLocale(((I18n.localeStr == "vi") ? "en" : "vi"));
    I18n.of(AppNavigator.context!).locale = (I18n.localeStr == "vi") ? null : const Locale("vi", "VN");
  }

  changeLanguage({bool isEnglish = false}) async {
    await LocalStorage().saveLocale(isEnglish ? "en" : "vi");
    if (isEnglish) {
      I18n.of(AppNavigator.context!).locale = const Locale("en", "US");
    } else {
      I18n.of(AppNavigator.context!).locale = const Locale("vi", "VN");
    }
  }

  initialLanguage(context) {
    String localeStr = LocalStorage().getLocale();
    if (localeStr == "vi") {
      I18n.of(context).locale = const Locale("vi", "VN");
    } else {
      I18n.of(context).locale = const Locale("en", "US");
    }
  }

  static bool getIsLanguage(String locale) {
    return LocalStorage().getLocale() == locale;
  }
}
