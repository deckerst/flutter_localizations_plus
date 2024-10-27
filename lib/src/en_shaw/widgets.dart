import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class _EnShawWidgetLocalizationsDelegate extends LocalizationsDelegate<WidgetsLocalizations> {
  const _EnShawWidgetLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'en' && locale.scriptCode == 'Shaw';

  @override
  Future<WidgetsLocalizations> load(Locale locale) async {
    return SynchronousFuture<WidgetsLocalizations>(
      const WidgetsLocalizationEnShaw(),
    );
  }

  @override
  bool shouldReload(_EnShawWidgetLocalizationsDelegate old) => false;
}

class WidgetsLocalizationEnShaw extends WidgetsLocalizationEn {
  const WidgetsLocalizationEnShaw();

  static const LocalizationsDelegate<WidgetsLocalizations> delegate = _EnShawWidgetLocalizationsDelegate();
}
