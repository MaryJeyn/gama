import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeMode themeMode = ThemeMode.dark;
  bool get isDark=> themeMode==ThemeMode.dark;
  void changeTheme (bool isOn){
    themeMode=isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
class MyThemes{
  static final lightTheme=ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.white,
    colorScheme: ColorScheme.light(),
    shadowColor: Colors.grey,
    iconTheme: IconThemeData(color: Colors.orangeAccent, opacity: 0.8),
    cardColor: Colors.white  );
  static final darkTheme=ThemeData(
      scaffoldBackgroundColor: Colors.grey.shade900,
      primaryColor: Colors.black,
      colorScheme: ColorScheme.dark(),
      shadowColor: Colors.black,
      iconTheme: IconThemeData(color: Colors.orange.shade300, opacity: 0.8),
      cardColor: Colors.black );
}
