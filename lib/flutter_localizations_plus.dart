import 'src/en_shaw/material.dart';
import 'src/en_shaw/widgets.dart';
import 'src/kmr/cupertino.dart';
import 'src/kmr/material.dart';
import 'src/kmr/widgets.dart';
import 'src/nn/material.dart';
import 'src/nn/widgets.dart';

// 𐑦𐑙𐑜𐑤𐑦𐑖 (𐑖𐑱𐑝𐑰𐑩𐑯)
class LocalizationsEnShaw {
  static const delegates = [
    MaterialLocalizationEnShaw.delegate,
    WidgetsLocalizationEnShaw.delegate,
  ];
}

// Kurdî (Kurmancî)
class LocalizationsKmr {
  static const delegates = [
    CupertinoLocalizationKmr.delegate,
    MaterialLocalizationKmr.delegate,
    WidgetsLocalizationKmr.delegate,
  ];
}

// Norsk (Nynorsk)
class LocalizationsNn {
  static const delegates = [
    MaterialLocalizationNn.delegate,
    WidgetsLocalizationNn.delegate,
  ];
}
