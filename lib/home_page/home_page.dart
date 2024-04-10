import 'package:async_builder/async_builder.dart';
import 'package:champer/app_bar_action_widget.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          gaplessPlayback: true,
          'assets/images/CHAMPER_Kompozycja.png',
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              radius: ResponsiveBreakpoints.of(context).largerThan(MOBILE) ? 10 : 4,
              colors: const [
                Color.fromRGBO(213, 0, 126, 1),
                Color.fromRGBO(186, 0, 111, 1),
                Color.fromRGBO(147, 0, 88, 1),
              ],
            ),
          ),
        ),
        actions: [
          AppBarActionWidget(
            onPressed: () {},
            text: 'O nas',
          ),
          AppBarActionWidget(
            onPressed: () {},
            text: 'Kontakt',
          )
        ],
      ),
      drawerEdgeDragWidth: 200,
      endDrawer: Builder(
        builder: (context) {
          return ResponsiveBreakpoints.of(context).largerThan(MOBILE)
              ? const SizedBox.shrink()
              : Drawer(
                  width: MediaQuery.sizeOf(context).width / 3,
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  child: ListView(
                    padding: const EdgeInsets.only(top: 32),
                    children: [], //getActions(),
                  ),
                );
        },
      ),
      body: const SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _Item(
                imageName: 'CHAMPER_Kompozycja',
                textImageName: 'aa_Obszar roboczy 1',
                isTextOnLeft: true,
                isFirst: true,
              ),
              _Divider(),
              _Item(
                imageName: 'PIES_GASTRO',
                textImageName: 'aa-04',
              ),
              _Divider(),
              _Item(
                imageName: 'APETIZERY TOP MISKA_immuno',
                textImageName: 'aa-03',
                isTextOnLeft: true,
              ),
              _Divider(),
              _Item(
                imageName: 'PIES_UNIWERSALNY',
                textImageName: 'aa-02',
              ),
            ],
          ),
        ),
      ),
    );
  }
// List<Widget> getActions() {
//   final mainPageBloc = GetIt.I.get<MainPageBloc>();
//   return List.unmodifiable(
//     [
//       AsyncBuilder<AboutPages?>(
//         stream: mainPageBloc.aboutUsMode,
//         builder: (context, aboutPage) {
//           return ListTile(
//             title: Text(AboutPages.about.name, style: Theme.of(context).textTheme.headlineMedium),
//             selected: aboutPage == AboutPages.about,
//             onTap: () {
//               mainPageBloc.aboutUsMode.add(AboutPages.about);
//               Navigator.pop(context);
//             },
//           );
//         },
//       ),
//       AsyncBuilder<AboutPages?>(
//         stream: mainPageBloc.aboutUsMode,
//         builder: (context, aboutPage) {
//           return ListTile(
//             title: Text(AboutPages.contact.name, style: Theme.of(context).textTheme.headlineMedium),
//             selected: aboutPage == AboutPages.contact,
//             onTap: () {
//               mainPageBloc.aboutUsMode.add(AboutPages.contact);
//               Navigator.pop(context);
//             },
//           );
//         },
//       ),
//     ],
//   );
// }
}

class _Item extends StatelessWidget {
  const _Item({required this.textImageName, required this.imageName, this.isTextOnLeft = false, this.isFirst = false});

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
        layout: ResponsiveBreakpoints.of(context).largerThan(MOBILE)
            ? ResponsiveRowColumnType.ROW
            : ResponsiveRowColumnType.COLUMN,
        // rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
        rowMainAxisSize: MainAxisSize.min,
        // columnMainAxisAlignment: MainAxisAlignment.center,
        columnMainAxisSize: MainAxisSize.min,
        children: [
          ResponsiveRowColumnItem(
            columnFlex: 1,
            rowFlex: 1,
            columnOrder: 0,
            rowOrder: isTextOnLeft ? 1 : 0,
            child: Image.asset(
              fit: BoxFit.fill,
              gaplessPlayback: true,
              'assets/images/$imageName.png',
              // width: MediaQuery.sizeOf(context).width * .5,
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
                // fit: BoxFit.fitHeight,
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

class _Divider extends StatelessWidget {
  const _Divider();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 3),
      child: DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, -1),
            ),
          ],
        ),
        child: Divider(
          color: Colors.transparent,
          thickness: 0,
          height: 5,
        ),
      ),
    );
  }
}
