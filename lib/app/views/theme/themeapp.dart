import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*https://api.flutter.dev/flutter/material/ThemeData-class.html*/

class ThemeApp {
  ThemeApp(this.context);

  final BuildContext context;

  ThemeData get defaulTheme => ThemeData(
        primaryColor: Color(0XFF20263b),
        scaffoldBackgroundColor: Color(0XFFF314270),
        cardColor: Theme.of(context).cardColor,
      );
}
