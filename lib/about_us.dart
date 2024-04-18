import 'package:champer/appbar/app_bar_action_widget.dart';
import 'package:champer/appbar/drawer.dart';
import 'package:champer/appbar/predefined_appbar.dart';
import 'package:champer/contact.dart';
import 'package:champer/home_page/home_page.dart';
import 'package:champer/responsive_breakpoints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    final meta = MetaSEO();
    final a = meta.author(author: 'PETMEX');
    final d = meta.description(
        description:
            'Champer – is a brand for pet owners who understand that a true relationship with their Pet is about love and dedication. Our comprehensive and innovative approach to feeding animals offers the highest quality products based on unique solutions and functional recipes that support the health and physical and emotional needs of animals. The additives and mixes used in Champer products have been developed by a group of specialists and experts who conduct daily scientific research activities.');
    final k = meta.keywords(keywords: 'Champer, Champerpet, Petmex, food, dogs, dog, fitobiotics, aboutUs, O nas');

    return ResponsiveBreakpoints.builder(
      breakpoints: breakpoints,
      child: Scaffold(
        appBar: PredefinedAppbar(
          customActions: getActions(context),
        ),
        drawerEdgeDragWidth: 200,
        endDrawer: DrawerWidget(customActions: getDrawerActions(context)),
        body: const Center(
          child: _Item(
            imageName: 'CHAMPER_MISKA_Z_ziałami',
            textImageName: 'aa_Obszar roboczy 1',
            isTextOnLeft: true,
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
      // columnMainAxisSize: MainAxisSize.min,
      columnMainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ResponsiveRowColumnItem(
          columnFlex: 1,
          rowFlex: 1,
          columnOrder: 1,
          rowOrder: isTextOnLeft ? 1 : 0,
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            child: Image.asset(
              gaplessPlayback: true,
              'assets/images/$imageName.jpg',
            ),
          ),
        ),
        ResponsiveRowColumnItem(
          columnFlex: 3,
          rowFlex: 1,
          columnOrder: 0,
          rowOrder: isTextOnLeft ? 0 : 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 8),
            child: SingleChildScrollView(
              child: Text(
                _aboutUsText,
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

const _aboutUsText =
    'Champer – to marka dla właścicieli zwierząt, którzy rozumieją, że prawdziwa relacja z ich Pupilem to miłość i oddanie. Nasze kompleksowe i innowacyjne podejście do karmienia zwierząt, oferuje najwyższej jakości produkty w oparciu o unikalne rozwiązania i funkcjonalne receptury, wspierające zdrowie oraz fizyczne i emocjonalne potrzeby zwierząt. Dodatki i mieszanki używane wproduktach Champer zostały opracowane grono specjalistów i ekspertów, na codzień prowadzących działalność badawczo naukową.';
