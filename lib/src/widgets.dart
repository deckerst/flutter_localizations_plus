import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class _NnWidgetLocalizationsDelegate extends LocalizationsDelegate<WidgetsLocalizations> {
  const _NnWidgetLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'nn';

  @override
  Future<WidgetsLocalizations> load(Locale locale) async {
    return SynchronousFuture<WidgetsLocalizations>(
      const WidgetsLocalizationNn(),
    );
  }

  @override
  bool shouldReload(_NnWidgetLocalizationsDelegate old) => false;
}

class WidgetsLocalizationNn extends GlobalWidgetsLocalizations {
  const WidgetsLocalizationNn() : super(TextDirection.ltr);

  static const LocalizationsDelegate<WidgetsLocalizations> delegate = _NnWidgetLocalizationsDelegate();

  @override
  String get reorderItemDown => 'Flytt ned';

  @override
  String get reorderItemLeft => 'Flytt til venstre';

  @override
  String get reorderItemRight => 'Flytt til høgre';

  @override
  String get reorderItemToEnd => 'Flytt til enden';

  @override
  String get reorderItemToStart => 'Flytt til byrjinga';

  @override
  String get reorderItemUp => 'Flytt opp';
}
