import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:new_mobilek/lang/en_US.dart';
import 'package:new_mobilek/lang/ru_RU.dart';
import 'package:new_mobilek/lang/uz_UZ.dart';

class LocalizationService extends Translations {
  static final locale = Locale('uz', 'UZ');

  static final fallbackLocale = Locale('uz', 'UZ');

  // Supported languages
  // Needs to be same order with locales
  static final langs = ['Ўзбекча', 'Русский', 'English'];

  // Supported locales
  // Needs to be same order with langs
  static final locales = [
    Locale('uz', 'UZ'),
    Locale('ru', 'RU'),
    Locale('en', 'EN'),
  ];

  // Keys and their translations
  // Translations are separated maps in `lang` file
  @override
  Map<String, Map<String, String>> get keys => {
        'uz_UZ': uzUZ, // lang/en_us.dart
        'ru_RU': ruRU, // lang/hi_IN.dart
        'en_US': enUS, // lang/ar_AE.dart
      };

  // Gets locale from language, and updates the locale
  void changeLocale(String lang) {
    final locale = getLocaleFromLanguage(lang);

    final box = GetStorage();
    box.write('lng', lang);

    Get.updateLocale(locale);
  }

  // Finds language in `langs` list and returns it as Locale
  Locale getLocaleFromLanguage(String lang) {
    for (int i = 0; i < langs.length; i++) {
      if (lang == langs[i]) return locales[i];
    }
    return Get.locale;
  }

  Locale getCurrentLocale() {
    final box = GetStorage();
    Locale defaultLocale;

    if (box.read('lng') != null) {
      final locale =
          LocalizationService().getLocaleFromLanguage(box.read('lng'));

      defaultLocale = locale;
    } else {
      defaultLocale = Locale(
        'uz',
        'UZ',
      );
    }

    return defaultLocale;
  }

  String getCurrentLang() {
    final box = GetStorage();

    return box.read('lng') != null ? box.read('lng') : "Ўзбекча";
  }
}
