import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/date_symbol_data_custom.dart' as date_symbol_data_custom;
import 'package:intl/intl.dart' as intl;
import 'package:intl/number_symbols_data.dart';

import 'intl.dart';

class _NnMaterialLocalizationsDelegate extends LocalizationsDelegate<MaterialLocalizations> {
  static const localeName = 'nn';

  const _NnMaterialLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'nn';

  static final Map<Locale, Future<MaterialLocalizations>> _loadedTranslations = {};

  @override
  Future<MaterialLocalizations> load(Locale locale) async {
    return _loadedTranslations.putIfAbsent(locale, () {
      date_symbol_data_custom.initializeDateFormattingCustom(
        locale: localeName,
        symbols: IntlNn.dateSymbols,
        patterns: IntlNn.datePatterns,
      );
      numberFormatSymbols.putIfAbsent(localeName, () => IntlNn.numberSymbols);

      return SynchronousFuture<MaterialLocalizations>(
        MaterialLocalizationNn(
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
  bool shouldReload(_NnMaterialLocalizationsDelegate old) => false;
}

// Localization for Nynorsk, based on `MaterialLocalizationNb` translation and `intl` date/number patterns
class MaterialLocalizationNn extends MaterialLocalizationNb {
  MaterialLocalizationNn({
    super.localeName = 'nn',
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

  static const LocalizationsDelegate<MaterialLocalizations> delegate = _NnMaterialLocalizationsDelegate();
}
