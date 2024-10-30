import 'src/en_shaw/material.dart';
import 'src/en_shaw/widgets.dart';
import 'src/nn/cupertino.dart';
import 'src/nn/material.dart';
import 'src/nn/widgets.dart';

class LocalizationsEnShaw {
  static const delegates = [
    MaterialLocalizationEnShaw.delegate,
    WidgetsLocalizationEnShaw.delegate,
  ];
}

class LocalizationsNn {
  static const delegates = [
    CupertinoLocalizationNn.delegate,
    MaterialLocalizationNn.delegate,
    WidgetsLocalizationNn.delegate,
  ];
}
