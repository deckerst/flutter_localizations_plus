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

class WidgetsLocalizationNn extends WidgetsLocalizationNb {
  const WidgetsLocalizationNn();

  static const LocalizationsDelegate<WidgetsLocalizations> delegate = _NnWidgetLocalizationsDelegate();
}
