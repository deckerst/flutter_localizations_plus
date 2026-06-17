import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class _KmrWidgetLocalizationsDelegate extends LocalizationsDelegate<WidgetsLocalizations> {
  const _KmrWidgetLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'kmr';

  @override
  Future<WidgetsLocalizations> load(Locale locale) async {
    return SynchronousFuture<WidgetsLocalizations>(
      const WidgetsLocalizationKmr(),
    );
  }

  @override
  bool shouldReload(_KmrWidgetLocalizationsDelegate old) => false;
}

// TODO TLAD translate from English
class WidgetsLocalizationKmr extends GlobalWidgetsLocalizations {
  const WidgetsLocalizationKmr() : super(TextDirection.ltr);

  static const LocalizationsDelegate<WidgetsLocalizations> delegate = _KmrWidgetLocalizationsDelegate();

  @override
  String get copyButtonLabel => 'Copy';

  @override
  String get cutButtonLabel => 'Cut';

  @override
  String get lookUpButtonLabel => 'Look Up';

  @override
  String get noResultsFound => 'No results found';

  @override
  String get pasteButtonLabel => 'Paste';

  @override
  String get radioButtonUnselectedLabel => 'Not selected';

  @override
  String get reorderItemDown => 'Move down';

  @override
  String get reorderItemLeft => 'Move left';

  @override
  String get reorderItemRight => 'Move right';

  @override
  String get reorderItemToEnd => 'Move to the end';

  @override
  String get reorderItemToStart => 'Move to the start';

  @override
  String get reorderItemUp => 'Move up';

  @override
  String get searchResultsFound => 'Search results found';

  @override
  String get searchWebButtonLabel => 'Search Web';

  @override
  String get selectAllButtonLabel => 'Select all';

  @override
  String get shareButtonLabel => 'Share';
}
