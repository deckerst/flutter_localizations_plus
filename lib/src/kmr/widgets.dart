import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:kurd_localization/kurd_localization.dart';

class _KmrWidgetLocalizationsDelegate extends LocalizationsDelegate<WidgetsLocalizations> {
  const _KmrWidgetLocalizationsDelegate();

  // both 'kmr' and 'krm' are found in the wild, but 'kmr' is the ISO 639-3 standard
  @override
  bool isSupported(Locale locale) => ['kmr', 'krm'].contains(locale.languageCode);

  @override
  Future<WidgetsLocalizations> load(Locale locale) async {
    return SynchronousFuture<WidgetsLocalizations>(
      WidgetsLocalizationKmr(),
    );
  }

  @override
  bool shouldReload(_KmrWidgetLocalizationsDelegate old) => false;
}

class WidgetsLocalizationKmr extends KurmanjiWidgetLocalizations {
  static const LocalizationsDelegate<WidgetsLocalizations> delegate = _KmrWidgetLocalizationsDelegate();
}
