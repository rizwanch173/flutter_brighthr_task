import 'package:flutter_brighthr_task/l10n/app_localizations.dart';
import 'package:flutter_brighthr_task/l10n/app_localizations_en.dart';
import 'package:flutter_brighthr_task/l10n/app_localizations_es.dart';
import 'package:flutter/material.dart';

class Localization {
  static late BuildContext _context;

  ///ignore:use_setters_to_change_properties
  static void setup(BuildContext context) {
    _context = context;
  }

  static AppLocalizations get value {
    return AppLocalizations.of(_context)!;
  }

  static AppLocalizations get spanishValue {
    return AppLocalizationsEs();
  }

  static AppLocalizations get englishValue {
    return AppLocalizationsEn();
  }

  static List<LocalizationsDelegate<dynamic>> get localizationsDelegates {
    return AppLocalizations.localizationsDelegates;
  }

  static List<LocalizationsDelegate<dynamic>> get localizationsDelegatesNew {
    List<LocalizationsDelegate<dynamic>> localizationsDelegatesupdated = [];
    AppLocalizations.localizationsDelegates.forEach((action) {
      localizationsDelegatesupdated.add(action);
    });

    return localizationsDelegatesupdated;
  }

  static List<Locale> get supportedLocales {
    return AppLocalizations.supportedLocales;
  }
}
