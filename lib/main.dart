import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'styling/app_theme.dart';
import 'ui/screens/search_screen.dart';

void main() {
  //Ensure initialized
  WidgetsFlutterBinding.ensureInitialized();

  //Make status bar transparent
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
    ),
  );

  //Set orientation
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      title: 'Otakoyi Test',
      home: SearchScreen(),
    );
  }
}
