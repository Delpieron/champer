import 'package:champer/appbar/app_bar_action_widget.dart';
import 'package:champer/appbar/drawer.dart';
import 'package:champer/appbar/predefined_appbar.dart';
import 'package:champer/contact.dart';
import 'package:champer/home_page/home_page.dart';
import 'package:champer/responsive_breakpoints.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBreakpoints.builder(
      breakpoints: breakpoints,
      child: Scaffold(
        appBar: PredefinedAppbar(
          customActions: getActions(context),
        ),
        drawerEdgeDragWidth: 200,
        endDrawer: DrawerWidget(customActions: getDrawerActions(context)),
        body: const SingleChildScrollView(
          child: Center(
            child: _Item(
              imageName: 'CHAMPER_MISKA_Z_ziałami',
              textImageName: 'aa_Obszar roboczy 1',
              isTextOnLeft: true,
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> getActions(BuildContext context) {
    return List.unmodifiable(
      [
        AppBarActionWidget(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute<void>(builder: (context) => const HomePage()),
            );
          },
          text: 'Strona główna',
        ),
        AppBarActionWidget(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute<void>(builder: (context) => const Contact()),
            );
          },
          text: 'Kontakt',
        ),
      ],
    );
  }

  List<Widget> getDrawerActions(BuildContext context) {
    return List.unmodifiable(
      [
        AppBarActionWidget(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute<void>(builder: (context) => const HomePage()),
            );
          },
          text: 'Strona główna',
          padding: const EdgeInsets.only(bottom: 16, top: 32),
        ),
        AppBarActionWidget(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute<void>(builder: (context) => const Contact()),
            );
          },
          text: 'Kontakt',
          padding: const EdgeInsets.only(bottom: 64),
        ),
      ],
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({
    required this.textImageName,
    required this.imageName,
    this.isTextOnLeft = false,
  });

  final String textImageName;
  final String imageName;
  final bool isTextOnLeft;

  @override
  Widget build(BuildContext context) {
    return ResponsiveRowColumn(
      layout: ResponsiveBreakpoints.of(context).largerThan(TABLET)
          ? ResponsiveRowColumnType.ROW
          : ResponsiveRowColumnType.COLUMN,
      rowMainAxisSize: MainAxisSize.min,
      columnMainAxisSize: MainAxisSize.min,
      children: [
        ResponsiveRowColumnItem(
          columnFlex: 1,
          rowFlex: 1,
          columnOrder: 1,
          rowOrder: isTextOnLeft ? 1 : 0,
          child: Image.asset(
            fit: BoxFit.fill,
            gaplessPlayback: true,
            'assets/images/$imageName.png',
          ),
        ),
        ResponsiveRowColumnItem(
          columnFlex: 2,
          rowFlex: 1,
          columnOrder: 0,
          rowOrder: isTextOnLeft ? 0 : 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 64,vertical: 8),
            child: Text(
              _aboutUsText,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ),
      ],
    );
  }
}

const _aboutUsText =
    'Champer – to marka dla właścicieli zwierząt, którzy rozumieją, że prawdziwa relacja z ich Pupilem to miłość i oddanie. Nasze kompleksowe i innowacyjne podejście do karmienia zwierząt, oferujenajwyższej jakości produkty w oparciu o unikalne rozwiązania i funkcjonalnereceptury, wspierające zdrowie oraz fizyczne i emocjonalne potrzeby zwierząt.Dodatki i mieszanki używane wproduktach Champer zostały opracowane grono specjalistów i ekspertów, na codzień prowadzących działalność badawczo naukową.';
