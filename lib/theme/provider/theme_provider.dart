import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mohammod_shawon_ali_s_application1/core/utils/pref_utils.dart';

class ThemeProvider extends ChangeNotifier {
  themeChange(String themeType) async {
    PrefUtils().setThemeData(themeType);
    notifyListeners();
  }
}
