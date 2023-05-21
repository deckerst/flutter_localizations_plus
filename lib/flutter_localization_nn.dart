library flutter_localization_nn;

import 'src/cupertino.dart';
import 'src/material.dart';
import 'src/widgets.dart';

class LocalizationsNn {
  static const delegates = [
    MaterialLocalizationNn.delegate,
    CupertinoLocalizationNn.delegate,
    WidgetsLocalizationNn.delegate,
  ];
}
