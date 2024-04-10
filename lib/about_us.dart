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
              imageName: 'CHAMPER_Kompozycja',
              textImageName: 'aa_Obszar roboczy 1',
              isTextOnLeft: true,
              isFirst: true,
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
    this.isFirst = false,
  });

  final String textImageName;
  final String imageName;
  final bool isTextOnLeft;
  final bool isFirst;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      child: ResponsiveRowColumn(
        layout: ResponsiveBreakpoints.of(context).largerThan(TABLET)
            ? ResponsiveRowColumnType.ROW
            : ResponsiveRowColumnType.COLUMN,
        rowMainAxisSize: MainAxisSize.min,
        columnMainAxisSize: MainAxisSize.min,
        children: [
          ResponsiveRowColumnItem(
            columnFlex: 1,
            rowFlex: 1,
            columnOrder: 0,
            rowOrder: isTextOnLeft ? 1 : 0,
            child: Image.asset(
              fit: !isFirst ? BoxFit.fill : null,
              gaplessPlayback: true,
              'assets/images/$imageName.png',
              height: MediaQuery.sizeOf(context).height,
            ),
          ),
          ResponsiveRowColumnItem(
            columnFlex: 1,
            rowFlex: 1,
            columnOrder: 1,
            rowOrder: isTextOnLeft ? 0 : 1,
            child: ColoredBox(
              color: isFirst ? Colors.white : Colors.grey.shade300,
              child: Image.asset(
                gaplessPlayback: true,
                'assets/text_images/$textImageName.png',
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
