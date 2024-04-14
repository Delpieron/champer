import 'package:champer/home_page/home_page.dart';
import 'package:champer/themes/light_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Champer',
      debugShowCheckedModeBanner: false,
      theme: getThemeBySize(context),
      home: const HomePage(),
    );
  }

  ThemeData getThemeBySize(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    if (width < 600) {
      return mobileSmallLightTheme;
    }
    if (width < 1100) {
      return mobileLightTheme;
    }
    return lightTheme;
  }
}
