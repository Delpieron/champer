import 'package:champer/home_page/home_page.dart';
import 'package:champer/themes/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: getThemeBySize(context),
      home: ResponsiveBreakpoints.builder(
        child: const HomePage(),
        breakpoints: [
          const Breakpoint(start: 0, end: 850, name: MOBILE),
          const Breakpoint(start: 851, end: 1400, name: TABLET),
          const Breakpoint(start: 1201, end: 1920, name: DESKTOP),
        ],
      ),
    );
  }

  ThemeData getThemeBySize(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    if (width <= 300) {
      return mobileMicroLightTheme;
    }
    if (width <= 400 || MediaQuery.sizeOf(context).height < 650) {
      return mobileSmallLightTheme;
    }
    if ((width > 400 && width < 1400) || MediaQuery.sizeOf(context).height < 1000) {
      return mobileLightTheme;
    }
    return lightTheme;
  }
}
