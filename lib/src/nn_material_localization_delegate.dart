import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/date_symbol_data_custom.dart' as date_symbol_data_custom;
import 'package:intl/date_symbols.dart' as intl;
import 'package:intl/intl.dart' as intl;
import 'package:intl/number_symbols.dart';
import 'package:intl/number_symbols_data.dart';

class _NnMaterialLocalizationsDelegate extends LocalizationsDelegate<MaterialLocalizations> {
  const _NnMaterialLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'nn';

  static final Map<Locale, Future<MaterialLocalizations>> _loadedTranslations = <Locale, Future<MaterialLocalizations>>{};

  @override
  Future<MaterialLocalizations> load(Locale locale) async {
    return _loadedTranslations.putIfAbsent(locale, () {
      const localeName = 'nn';
      date_symbol_data_custom.initializeDateFormattingCustom(
        locale: localeName,
        symbols: MaterialLocalizationNn.dateSymbols,
        patterns: MaterialLocalizationNn.datePatterns,
      );
      numberFormatSymbols.putIfAbsent(localeName, () => MaterialLocalizationNn.numberSymbols);

      return SynchronousFuture<MaterialLocalizations>(MaterialLocalizationNn(
        fullYearFormat: intl.DateFormat.y(localeName),
        compactDateFormat: intl.DateFormat.yMd(localeName),
        shortDateFormat: intl.DateFormat.yMMMd(localeName),
        mediumDateFormat: intl.DateFormat.MMMEd(localeName),
        longDateFormat: intl.DateFormat.yMMMMEEEEd(localeName),
        yearMonthFormat: intl.DateFormat.yMMMM(localeName),
        shortMonthDayFormat: intl.DateFormat.MMMd(localeName),
        decimalFormat: intl.NumberFormat.decimalPattern(localeName),
        twoDigitZeroPaddedFormat: intl.NumberFormat('00', localeName),
      ));
    });
  }

  @override
  bool shouldReload(_NnMaterialLocalizationsDelegate old) => false;
}

// Localization for Nynorsk, based on `MaterialLocalizationNb` translation and `intl` date/number patterns
class MaterialLocalizationNn extends GlobalMaterialLocalizations {
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

  @override
  String get aboutListTileTitleRaw => r'Om $applicationName';

  @override
  String get alertDialogLabel => 'Varsel';

  @override
  String get anteMeridiemAbbreviation => 'AM';

  @override
  String get backButtonTooltip => 'Tilbake';

  @override
  String get bottomSheetLabel => 'Felt nederst';

  @override
  String get calendarModeButtonLabel => 'Bytt til kalender';

  @override
  String get cancelButtonLabel => 'Avbryt';

  @override
  String get closeButtonLabel => 'Lukk';

  @override
  String get closeButtonTooltip => 'Lukk';

  @override
  String get collapsedIconTapHint => 'Vis';

  @override
  String get continueButtonLabel => 'Fortsett';

  @override
  String get copyButtonLabel => 'Kopiér';

  @override
  String get currentDateLabel => 'I dag';

  @override
  String get cutButtonLabel => 'Klipp ut';

  @override
  String get dateHelpText => 'dd.mm.åååå';

  @override
  String get dateInputLabel => 'Skriv inn datoen';

  @override
  String get dateOutOfRangeLabel => 'Utenfor perioden.';

  @override
  String get datePickerHelpText => 'Velg dato';

  @override
  String get dateRangeEndDateSemanticLabelRaw => r'Sluttdato $fullDate';

  @override
  String get dateRangeEndLabel => 'Sluttdato';

  @override
  String get dateRangePickerHelpText => 'Velg datoperiode';

  @override
  String get dateRangeStartDateSemanticLabelRaw => r'Startdato $fullDate';

  @override
  String get dateRangeStartLabel => 'Startdato';

  @override
  String get dateSeparator => '.';

  @override
  String get deleteButtonTooltip => 'Slett';

  @override
  String get dialModeButtonLabel => 'Bytt til modus for valg fra urskive';

  @override
  String get dialogLabel => 'Dialogboks';

  @override
  String get drawerLabel => 'Navigasjonsmeny';

  @override
  String get expandedIconTapHint => 'Skjul';

  @override
  String get firstPageTooltip => 'Første side';

  @override
  String get hideAccountsLabel => 'Skjul kontoer';

  @override
  String get inputDateModeButtonLabel => 'Bytt til innskriving';

  @override
  String get inputTimeModeButtonLabel => 'Bytt til tekstinndatamodus';

  @override
  String get invalidDateFormatLabel => 'Ugyldig format.';

  @override
  String get invalidDateRangeLabel => 'Ugyldig periode.';

  @override
  String get invalidTimeLabel => 'Angi et gyldig klokkeslett';

  @override
  String get keyboardKeyAlt => 'Alt';

  @override
  String get keyboardKeyAltGraph => 'Alt Gr';

  @override
  String get keyboardKeyBackspace => 'Tilbaketast';

  @override
  String get keyboardKeyCapsLock => 'Caps Lock';

  @override
  String get keyboardKeyChannelDown => 'Forrige kanal';

  @override
  String get keyboardKeyChannelUp => 'Neste kanal';

  @override
  String get keyboardKeyControl => 'Ctrl';

  @override
  String get keyboardKeyDelete => 'Del';

  @override
  String get keyboardKeyEject => 'Løs ut';

  @override
  String get keyboardKeyEnd => 'End';

  @override
  String get keyboardKeyEscape => 'Esc';

  @override
  String get keyboardKeyFn => 'Fn';

  @override
  String get keyboardKeyHome => 'Home';

  @override
  String get keyboardKeyInsert => 'Insert';

  @override
  String get keyboardKeyMeta => 'Meta';

  @override
  String get keyboardKeyMetaMacOs => 'Kommando';

  @override
  String get keyboardKeyMetaWindows => 'Win';

  @override
  String get keyboardKeyNumLock => 'Num Lock';

  @override
  String get keyboardKeyNumpad0 => 'Num 0';

  @override
  String get keyboardKeyNumpad1 => 'Num 1';

  @override
  String get keyboardKeyNumpad2 => 'Num 2';

  @override
  String get keyboardKeyNumpad3 => 'Num 3';

  @override
  String get keyboardKeyNumpad4 => 'Num 4';

  @override
  String get keyboardKeyNumpad5 => 'Num 5';

  @override
  String get keyboardKeyNumpad6 => 'Num 6';

  @override
  String get keyboardKeyNumpad7 => 'Num 7';

  @override
  String get keyboardKeyNumpad8 => 'Num 8';

  @override
  String get keyboardKeyNumpad9 => 'Num 9';

  @override
  String get keyboardKeyNumpadAdd => 'Num +';

  @override
  String get keyboardKeyNumpadComma => 'Num ,';

  @override
  String get keyboardKeyNumpadDecimal => 'Num .';

  @override
  String get keyboardKeyNumpadDivide => 'Num /';

  @override
  String get keyboardKeyNumpadEnter => 'Num Enter';

  @override
  String get keyboardKeyNumpadEqual => 'Num =';

  @override
  String get keyboardKeyNumpadMultiply => 'Num *';

  @override
  String get keyboardKeyNumpadParenLeft => 'Num (';

  @override
  String get keyboardKeyNumpadParenRight => 'Num )';

  @override
  String get keyboardKeyNumpadSubtract => 'Num -';

  @override
  String get keyboardKeyPageDown => 'PgDown';

  @override
  String get keyboardKeyPageUp => 'PgUp';

  @override
  String get keyboardKeyPower => 'Av/på';

  @override
  String get keyboardKeyPowerOff => 'Slå av';

  @override
  String get keyboardKeyPrintScreen => 'PrtScn';

  @override
  String get keyboardKeyScrollLock => 'ScrLk';

  @override
  String get keyboardKeySelect => 'Velg';

  @override
  String get keyboardKeyShift => 'Shift';

  @override
  String get keyboardKeySpace => 'Mellomrom';

  @override
  String get lastPageTooltip => 'Siste side';

  @override
  String? get licensesPackageDetailTextFew => null;

  @override
  String? get licensesPackageDetailTextMany => null;

  @override
  String? get licensesPackageDetailTextOne => '1 lisens';

  @override
  String get licensesPackageDetailTextOther => r'$licenseCount lisenser';

  @override
  String? get licensesPackageDetailTextTwo => null;

  @override
  String? get licensesPackageDetailTextZero => null;

  @override
  String get licensesPageTitle => 'Lisenser';

  @override
  String get menuBarMenuLabel => 'Meny med menylinje';

  @override
  String get modalBarrierDismissLabel => 'Avvis';

  @override
  String get moreButtonTooltip => 'Mer';

  @override
  String get nextMonthTooltip => 'Neste måned';

  @override
  String get nextPageTooltip => 'Neste side';

  @override
  String get okButtonLabel => 'OK';

  @override
  String get openAppDrawerTooltip => 'Åpne navigasjonsmenyen';

  @override
  String get pageRowsInfoTitleRaw => r'$firstRow–$lastRow av $rowCount';

  @override
  String get pageRowsInfoTitleApproximateRaw => r'$firstRow–$lastRow av omtrent $rowCount';

  @override
  String get pasteButtonLabel => 'Lim inn';

  @override
  String get popupMenuLabel => 'Forgrunnsmeny';

  @override
  String get postMeridiemAbbreviation => 'PM';

  @override
  String get previousMonthTooltip => 'Forrige måned';

  @override
  String get previousPageTooltip => 'Forrige side';

  @override
  String get refreshIndicatorSemanticLabel => 'Laster inn på nytt';

  @override
  String? get remainingTextFieldCharacterCountFew => null;

  @override
  String? get remainingTextFieldCharacterCountMany => null;

  @override
  String? get remainingTextFieldCharacterCountOne => '1 tegn gjenstår';

  @override
  String get remainingTextFieldCharacterCountOther => r'$remainingCount tegn gjenstår';

  @override
  String? get remainingTextFieldCharacterCountTwo => null;

  @override
  String? get remainingTextFieldCharacterCountZero => null;

  @override
  String get reorderItemDown => 'Flytt ned';

  @override
  String get reorderItemLeft => 'Flytt til venstre';

  @override
  String get reorderItemRight => 'Flytt til høyre';

  @override
  String get reorderItemToEnd => 'Flytt til slutten';

  @override
  String get reorderItemToStart => 'Flytt til starten';

  @override
  String get reorderItemUp => 'Flytt opp';

  @override
  String get rowsPerPageTitle => 'Rader per side:';

  @override
  String get saveButtonLabel => 'Lagre';

  @override
  String get scrimLabel => 'Vev';

  @override
  String get scrimOnTapHintRaw => r'Lukk $modalRouteContentName';

  @override
  ScriptCategory get scriptCategory => ScriptCategory.englishLike;

  @override
  String get searchFieldLabel => 'Søk';

  @override
  String get selectAllButtonLabel => 'Velg alle';

  @override
  String get selectYearSemanticsLabel => 'Velg året';

  @override
  String? get selectedRowCountTitleFew => null;

  @override
  String? get selectedRowCountTitleMany => null;

  @override
  String? get selectedRowCountTitleOne => '1 element er valgt';

  @override
  String get selectedRowCountTitleOther => r'$selectedRowCount elementer er valgt';

  @override
  String? get selectedRowCountTitleTwo => null;

  @override
  String? get selectedRowCountTitleZero => null;

  @override
  String get showAccountsLabel => 'Vis kontoer';

  @override
  String get showMenuTooltip => 'Vis meny';

  @override
  String get signedInLabel => 'Pålogget';

  @override
  String get tabLabelRaw => r'Fane $tabIndex av $tabCount';

  @override
  TimeOfDayFormat get timeOfDayFormatRaw => TimeOfDayFormat.HH_colon_mm;

  @override
  String get timePickerDialHelpText => 'Velg tidspunkt';

  @override
  String get timePickerHourLabel => 'Time';

  @override
  String get timePickerHourModeAnnouncement => 'Angi timer';

  @override
  String get timePickerInputHelpText => 'Angi et tidspunkt';

  @override
  String get timePickerMinuteLabel => 'Minutt';

  @override
  String get timePickerMinuteModeAnnouncement => 'Angi minutter';

  @override
  String get unspecifiedDate => 'Dato';

  @override
  String get unspecifiedDateRange => 'Datoperiode';

  @override
  String get viewLicensesButtonLabel => 'Se lisenser';

  static final dateSymbols = intl.DateSymbols(
    NAME: 'nn',
    ERAS: const <String>[
      'f.Kr.',
      'e.Kr.',
    ],
    ERANAMES: const <String>[
      'før Kristus',
      'etter Kristus',
    ],
    NARROWMONTHS: const <String>[
      'J',
      'F',
      'M',
      'A',
      'M',
      'J',
      'J',
      'A',
      'S',
      'O',
      'N',
      'D',
    ],
    STANDALONENARROWMONTHS: const <String>[
      'J',
      'F',
      'M',
      'A',
      'M',
      'J',
      'J',
      'A',
      'S',
      'O',
      'N',
      'D',
    ],
    MONTHS: const <String>[
      'januar',
      'februar',
      'mars',
      'april',
      'mai',
      'juni',
      'juli',
      'august',
      'september',
      'oktober',
      'november',
      'desember',
    ],
    STANDALONEMONTHS: const <String>[
      'januar',
      'februar',
      'mars',
      'april',
      'mai',
      'juni',
      'juli',
      'august',
      'september',
      'oktober',
      'november',
      'desember',
    ],
    SHORTMONTHS: const <String>[
      'jan.',
      'feb.',
      'mar.',
      'apr.',
      'mai',
      'jun.',
      'jul.',
      'aug.',
      'sep.',
      'okt.',
      'nov.',
      'des.',
    ],
    STANDALONESHORTMONTHS: const <String>[
      'jan',
      'feb',
      'mar',
      'apr',
      'mai',
      'jun',
      'jul',
      'aug',
      'sep',
      'okt',
      'nov',
      'des',
    ],
    WEEKDAYS: const <String>[
      'søndag',
      'mandag',
      'tirsdag',
      'onsdag',
      'torsdag',
      'fredag',
      'lørdag',
    ],
    STANDALONEWEEKDAYS: const <String>[
      'søndag',
      'mandag',
      'tirsdag',
      'onsdag',
      'torsdag',
      'fredag',
      'lørdag',
    ],
    SHORTWEEKDAYS: const <String>[
      'søn.',
      'man.',
      'tir.',
      'ons.',
      'tor.',
      'fre.',
      'lør.',
    ],
    STANDALONESHORTWEEKDAYS: const <String>[
      'søn.',
      'man.',
      'tir.',
      'ons.',
      'tor.',
      'fre.',
      'lør.',
    ],
    NARROWWEEKDAYS: const <String>[
      'S',
      'M',
      'T',
      'O',
      'T',
      'F',
      'L',
    ],
    STANDALONENARROWWEEKDAYS: const <String>[
      'S',
      'M',
      'T',
      'O',
      'T',
      'F',
      'L',
    ],
    SHORTQUARTERS: const <String>[
      'K1',
      'K2',
      'K3',
      'K4',
    ],
    QUARTERS: const <String>[
      '1. kvartal',
      '2. kvartal',
      '3. kvartal',
      '4. kvartal',
    ],
    AMPMS: const <String>[
      'a.m.',
      'p.m.',
    ],
    DATEFORMATS: const <String>[
      'EEEE d. MMMM y',
      'd. MMMM y',
      'd. MMM y',
      'dd.MM.y',
    ],
    TIMEFORMATS: const <String>[
      'HH:mm:ss zzzz',
      'HH:mm:ss z',
      'HH:mm:ss',
      'HH:mm',
    ],
    FIRSTDAYOFWEEK: 0,
    WEEKENDRANGE: const <int>[
      5,
      6,
    ],
    FIRSTWEEKCUTOFFDAY: 3,
    DATETIMEFORMATS: const <String>[
      '{1} {0}',
      "{1} 'kl'. {0}",
      '{1}, {0}',
      '{1}, {0}',
    ],
  );

  static const datePatterns = {
    'd': 'd.',
    'E': 'ccc',
    'EEEE': 'cccc',
    'LLL': 'LLL',
    'LLLL': 'LLLL',
    'M': 'L.',
    'Md': 'd.M.',
    'MEd': 'EEE d.M.',
    'MMM': 'LLL',
    'MMMd': 'd. MMM',
    'MMMEd': 'EEE d. MMM',
    'MMMM': 'LLLL',
    'MMMMd': 'd. MMMM',
    'MMMMEEEEd': 'EEEE d. MMMM',
    'QQQ': 'QQQ',
    'QQQQ': 'QQQQ',
    'y': 'y',
    'yM': 'M.y',
    'yMd': 'd.M.y',
    'yMEd': 'EEE d.MM.y',
    'yMMM': 'MMM y',
    'yMMMd': 'd. MMM y',
    'yMMMEd': 'EEE d. MMM y',
    'yMMMM': 'MMMM y',
    'yMMMMd': 'd. MMMM y',
    'yMMMMEEEEd': 'EEEE d. MMMM y',
    'yQQQ': 'QQQ y',
    'yQQQQ': 'QQQQ y',
    'H': 'HH',
    'Hm': 'HH:mm',
    'Hms': 'HH:mm:ss',
    'j': 'HH',
    'jm': 'HH:mm',
    'jms': 'HH:mm:ss',
    'jmv': 'HH:mm v',
    'jmz': 'HH:mm z',
    'jz': 'HH z',
    'm': 'm',
    'ms': 'mm:ss',
    's': 's',
    'v': 'v',
    'z': 'z',
    'zzzz': 'zzzz',
    'ZZZZ': 'ZZZZ',
  };

  static const numberSymbols = NumberSymbols(
    NAME: "nb",
    DECIMAL_SEP: ',',
    GROUP_SEP: '\u00A0',
    PERCENT: '%',
    ZERO_DIGIT: '0',
    PLUS_SIGN: '+',
    MINUS_SIGN: '\u2212',
    EXP_SYMBOL: 'E',
    PERMILL: '\u2030',
    INFINITY: '\u221E',
    NAN: 'NaN',
    DECIMAL_PATTERN: '#,##0.###',
    SCIENTIFIC_PATTERN: '#E0',
    PERCENT_PATTERN: '#,##0\u00A0%',
    CURRENCY_PATTERN: '\u00A4\u00A0#,##0.00;\u00A4\u00A0-#,##0.00',
    DEF_CURRENCY_CODE: 'NOK',
  );
}
