import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_localization_nn/src/intl.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/date_symbol_data_custom.dart' as date_symbol_data_custom;
import 'package:intl/intl.dart' as intl;
import 'package:intl/number_symbols_data.dart';

class _NnCupertinoLocalizationsDelegate extends LocalizationsDelegate<CupertinoLocalizations> {
  static const localeName = 'nn';

  const _NnCupertinoLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'nn';

  static final Map<Locale, Future<CupertinoLocalizations>> _loadedTranslations = {};

  @override
  Future<CupertinoLocalizations> load(Locale locale) {
    return _loadedTranslations.putIfAbsent(locale, () {
      date_symbol_data_custom.initializeDateFormattingCustom(
        locale: localeName,
        symbols: IntlNn.dateSymbols,
        patterns: IntlNn.datePatterns,
      );
      numberFormatSymbols.putIfAbsent(localeName, () => IntlNn.numberSymbols);

      return SynchronousFuture<CupertinoLocalizations>(CupertinoLocalizationNn(
        fullYearFormat: intl.DateFormat.y(localeName),
        dayFormat: intl.DateFormat.d(localeName),
        mediumDateFormat: intl.DateFormat.MMMEd(localeName),
        singleDigitHourFormat: intl.DateFormat('HH', localeName),
        singleDigitMinuteFormat: intl.DateFormat.m(localeName),
        doubleDigitMinuteFormat: intl.DateFormat('mm', localeName),
        singleDigitSecondFormat: intl.DateFormat.s(localeName),
        decimalFormat: intl.NumberFormat.decimalPattern(localeName),
      ));
    });
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<CupertinoLocalizations> old) => false;
}

class CupertinoLocalizationNn extends GlobalCupertinoLocalizations {
  const CupertinoLocalizationNn({
    super.localeName = 'nn',
    required super.fullYearFormat,
    required super.dayFormat,
    required super.mediumDateFormat,
    required super.singleDigitHourFormat,
    required super.singleDigitMinuteFormat,
    required super.doubleDigitMinuteFormat,
    required super.singleDigitSecondFormat,
    required super.decimalFormat,
  });

  static const LocalizationsDelegate<CupertinoLocalizations> delegate = _NnCupertinoLocalizationsDelegate();

  @override
  String get alertDialogLabel => 'Varsel';

  @override
  String get anteMeridiemAbbreviation => 'a.m.';

  @override
  String get copyButtonLabel => 'Kopier';

  @override
  String get cutButtonLabel => 'Klipp ut';

  @override
  String get datePickerDateOrderString => 'dmy';

  @override
  String get datePickerDateTimeOrderString => 'date_time_dayPeriod';

  @override
  String? get datePickerHourSemanticsLabelFew => null;

  @override
  String? get datePickerHourSemanticsLabelMany => null;

  @override
  String? get datePickerHourSemanticsLabelOne => r'$hour null-null';

  @override
  String get datePickerHourSemanticsLabelOther => r'$hour null-null';

  @override
  String? get datePickerHourSemanticsLabelTwo => null;

  @override
  String? get datePickerHourSemanticsLabelZero => null;

  @override
  String? get datePickerMinuteSemanticsLabelFew => null;

  @override
  String? get datePickerMinuteSemanticsLabelMany => null;

  @override
  String? get datePickerMinuteSemanticsLabelOne => 'minutt';

  @override
  String get datePickerMinuteSemanticsLabelOther => r'$minute minutt';

  @override
  String? get datePickerMinuteSemanticsLabelTwo => null;

  @override
  String? get datePickerMinuteSemanticsLabelZero => null;

  @override
  String get modalBarrierDismissLabel => 'Avvis';

  @override
  String get noSpellCheckReplacementsLabel => 'Fann ingen erstatning';

  @override
  String get pasteButtonLabel => 'Lim inn';

  @override
  String get postMeridiemAbbreviation => 'p.m.';

  @override
  String get searchTextFieldPlaceholderLabel => 'Søk';

  @override
  String get selectAllButtonLabel => 'Vel alle';

  @override
  String get tabSemanticsLabelRaw => r'Fane $tabIndex av $tabCount';

  @override
  String? get timerPickerHourLabelFew => null;

  @override
  String? get timerPickerHourLabelMany => null;

  @override
  String? get timerPickerHourLabelOne => 'time';

  @override
  String get timerPickerHourLabelOther => 'timar';

  @override
  String? get timerPickerHourLabelTwo => null;

  @override
  String? get timerPickerHourLabelZero => null;

  @override
  String? get timerPickerMinuteLabelFew => null;

  @override
  String? get timerPickerMinuteLabelMany => null;

  @override
  String? get timerPickerMinuteLabelOne => 'min.';

  @override
  String get timerPickerMinuteLabelOther => 'min.';

  @override
  String? get timerPickerMinuteLabelTwo => null;

  @override
  String? get timerPickerMinuteLabelZero => null;

  @override
  String? get timerPickerSecondLabelFew => null;

  @override
  String? get timerPickerSecondLabelMany => null;

  @override
  String? get timerPickerSecondLabelOne => 'sek.';

  @override
  String get timerPickerSecondLabelOther => 'sek.';

  @override
  String? get timerPickerSecondLabelTwo => null;

  @override
  String? get timerPickerSecondLabelZero => null;

  @override
  String get todayLabel => 'I dag';
}
