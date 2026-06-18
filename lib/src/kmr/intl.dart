import 'dart:ui';

import 'package:intl/date_symbols.dart' as intl;
import 'package:intl/number_symbols.dart';
import 'package:kurd_localization/kurd_localization.dart';

class IntlKmr {
  static intl.DateSymbols dateSymbols(Locale locale) {
    final symbols = Map<String, Object?>.of(krmDateSymbols);
    symbols['NAME'] = locale.languageCode;
    return intl.DateSymbols.deserializeFromMap(symbols);
  }

  static const datePatterns = krmLocaleDatePatterns;

  // from `intl` / number_symbols_data.dart / `numberFormatSymbols['en']`
  static NumberSymbols numberSymbols(Locale locale) => NumberSymbols(
    NAME: locale.languageCode,
    DECIMAL_SEP: '.',
    GROUP_SEP: ',',
    PERCENT: '%',
    ZERO_DIGIT: '0',
    PLUS_SIGN: '+',
    MINUS_SIGN: '-',
    EXP_SYMBOL: 'E',
    PERMILL: '\u2030',
    INFINITY: '\u221E',
    NAN: 'NaN',
    DECIMAL_PATTERN: '#,##0.###',
    SCIENTIFIC_PATTERN: '#E0',
    PERCENT_PATTERN: '#,##0%',
    CURRENCY_PATTERN: '\u00A4#,##0.00',
    DEF_CURRENCY_CODE: 'USD',
  );
}
