import 'package:champer/home_page/home_page.dart';
import 'package:champer/themes/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:meta_seo/meta_seo.dart';

void main() {
  MetaSEO().config();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Champer',
      checkerboardRasterCacheImages: true,
      supportedLocales: const [Locale('pl'), Locale('en')],
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
