import 'package:champer/about_us.dart';
import 'package:champer/appbar/app_bar_action_widget.dart';
import 'package:champer/appbar/drawer.dart';
import 'package:champer/appbar/predefined_appbar.dart';
import 'package:champer/contact.dart';
import 'package:champer/responsive_breakpoints.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBreakpoints.builder(
      breakpoints: breakpoints,
      child: Builder(
        builder: (context) {
          final firstItemTopPadding =
              !ResponsiveBreakpoints.of(context).largerThan(TABLET) ? const EdgeInsets.only(top: 64) : EdgeInsets.zero;
          return Scaffold(
            appBar: PredefinedAppbar(
              customActions: getActions(context),
              leadingTapEnabled: false,
            ),
            drawerEdgeDragWidth: 200,
            extendBodyBehindAppBar: !ResponsiveBreakpoints.of(context).largerThan(TABLET),
            endDrawer: DrawerWidget(customActions: getDrawerActions(context)),
            body: SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: firstItemTopPadding,
                      child: const _Item(
                        imageName: 'CHAMPER_Kompozycja',
                        textImageName: 'aa_Obszar roboczy 1',
                        isTextOnLeft: true,
                        isFirst: true,
                      ),
                    ),
                    const _Item(
                      imageName: 'PIES_GASTRO',
                      textImageName: 'aa-04',
                    ),
                    const _Item(
                      imageName: 'APETIZERY TOP MISKA_immuno',
                      textImageName: 'aa-03',
                      isTextOnLeft: true,
                    ),
                    const _Item(
                      imageName: 'PIES_UNIWERSALNY',
                      textImageName: 'aa-02',
                    ),
                  ],
                ),
              ),
            ),
          );
        },
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
              MaterialPageRoute<void>(builder: (context) => const AboutUs()),
            );
          },
          text: 'O nas',
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
              MaterialPageRoute<void>(builder: (context) => const AboutUs()),
            );
          },
          text: 'O nas',
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
      height: MediaQuery.sizeOf(context).height * .9,
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
            child: ColoredBox(
              color: Colors.white,
              child: Image.asset(
                gaplessPlayback: true,
                'assets/images/$imageName.jpg',
                height: MediaQuery.sizeOf(context).height,
                width: MediaQuery.sizeOf(context).width,
              ),
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
                fit: BoxFit.fitWidth,
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
