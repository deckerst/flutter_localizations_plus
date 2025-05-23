import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/date_symbol_data_custom.dart' as date_symbol_data_custom;
import 'package:intl/intl.dart' as intl;
import 'package:intl/number_symbols.dart';
import 'package:intl/number_symbols_data.dart';

import 'intl.dart';

class _EnShawMaterialLocalizationsDelegate extends LocalizationsDelegate<MaterialLocalizations> {
  static const localeName = 'en_Shaw';

  const _EnShawMaterialLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'en' && locale.scriptCode == 'Shaw';

  static final Map<Locale, Future<MaterialLocalizations>> _loadedTranslations = {};

  @override
  Future<MaterialLocalizations> load(Locale locale) async {
    return _loadedTranslations.putIfAbsent(locale, () {
      date_symbol_data_custom.initializeDateFormattingCustom(
        locale: localeName,
        symbols: IntlEnShaw.dateSymbols,
        patterns: IntlEnShaw.datePatterns,
      );
      numberFormatSymbols.putIfAbsent(localeName, () => numberFormatSymbols['en'] as NumberSymbols);

      return SynchronousFuture<MaterialLocalizations>(
        MaterialLocalizationEnShaw(
          fullYearFormat: intl.DateFormat.y(localeName),
          compactDateFormat: intl.DateFormat.yMd(localeName),
          shortDateFormat: intl.DateFormat.yMMMd(localeName),
          mediumDateFormat: intl.DateFormat.MMMEd(localeName),
          longDateFormat: intl.DateFormat.yMMMMEEEEd(localeName),
          yearMonthFormat: intl.DateFormat.yMMMM(localeName),
          shortMonthDayFormat: intl.DateFormat.MMMd(localeName),
          decimalFormat: intl.NumberFormat.decimalPattern(localeName),
          twoDigitZeroPaddedFormat: intl.NumberFormat('00', localeName),
        ),
      );
    });
  }

  @override
  bool shouldReload(_EnShawMaterialLocalizationsDelegate old) => false;
}

class MaterialLocalizationEnShaw extends MaterialLocalizationEn {
  MaterialLocalizationEnShaw({
    super.localeName = 'en_Shaw',
    required super.fullYearFormat,
    required super.compactDateFormat,
    required super.shortDateFormat,
    required super.mediumDateFormat,
    required super.longDateFormat,
    required super.yearMonthFormat,
    required super.shortMonthDayFormat,
    required super.decimalFormat,
    required super.twoDigitZeroPaddedFormat,
  });

  static const LocalizationsDelegate<MaterialLocalizations> delegate = _EnShawMaterialLocalizationsDelegate();
}
