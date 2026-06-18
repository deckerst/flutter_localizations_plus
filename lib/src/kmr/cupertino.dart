import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/date_symbol_data_custom.dart' as date_symbol_data_custom;
import 'package:intl/intl.dart' as intl;
import 'package:intl/number_symbols_data.dart';
import 'package:kurd_localization/kurd_localization.dart';

import 'intl.dart';

class _KmrCupertinoLocalizationsDelegate extends LocalizationsDelegate<CupertinoLocalizations> {
  static const localeName = 'kmr';

  const _KmrCupertinoLocalizationsDelegate();

  // both 'kmr' and 'krm' are found in the wild, but 'kmr' is the ISO 639-3 standard
  @override
  bool isSupported(Locale locale) => ['kmr', 'krm'].contains(locale.languageCode);

  static final Map<Locale, Future<CupertinoLocalizations>> _loadedTranslations = {};

  @override
  Future<CupertinoLocalizations> load(Locale locale) async {
    return _loadedTranslations.putIfAbsent(locale, () {
      date_symbol_data_custom.initializeDateFormattingCustom(
        locale: localeName,
        symbols: IntlKmr.dateSymbols(locale),
        patterns: IntlKmr.datePatterns,
      );
      numberFormatSymbols.putIfAbsent(localeName, () => IntlKmr.numberSymbols(locale));

      return SynchronousFuture<CupertinoLocalizations>(
        CupertinoLocalizationKmr(
          fullYearFormat: intl.DateFormat.y(localeName),
          mediumDateFormat: intl.DateFormat.MMMEd(localeName),
          decimalFormat: intl.NumberFormat.decimalPattern(localeName),
          dayFormat: intl.DateFormat('d', localeName),
          doubleDigitMinuteFormat: intl.DateFormat('mm', localeName),
          singleDigitHourFormat: intl.DateFormat('h', localeName),
          singleDigitMinuteFormat: intl.DateFormat('m', localeName),
          singleDigitSecondFormat: intl.DateFormat('s', localeName),
          weekdayFormat: intl.DateFormat.EEEE(localeName),
        ),
      );
    });
  }

  @override
  bool shouldReload(_KmrCupertinoLocalizationsDelegate old) => false;
}

class CupertinoLocalizationKmr extends KurmanjiCupertinoLocalizations {
  CupertinoLocalizationKmr({
    super.localeName = 'kmr',
    required super.fullYearFormat,
    required super.mediumDateFormat,
    required super.decimalFormat,
    required super.dayFormat,
    required super.doubleDigitMinuteFormat,
    required super.singleDigitHourFormat,
    required super.singleDigitMinuteFormat,
    required super.singleDigitSecondFormat,
    required super.weekdayFormat,
  });

  static const LocalizationsDelegate<CupertinoLocalizations> delegate = _KmrCupertinoLocalizationsDelegate();
}
