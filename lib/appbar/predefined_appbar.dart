import 'package:champer/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

const double _maxAppbarHeight = 90;

class PredefinedAppbar extends StatelessWidget implements PreferredSizeWidget {
  const PredefinedAppbar({
    required this.customActions,
    super.key,
    this.leadingTapEnabled = true,
  });

  final List<Widget> customActions;
  final bool leadingTapEnabled;

  @override
  Size get preferredSize => const Size.fromHeight(_maxAppbarHeight);

  @override
  Widget build(BuildContext context) {
    final largerThanTablet = ResponsiveBreakpoints.of(context).largerThan(TABLET);
    return AppBar(
      forceMaterialTransparency: true,
      leadingWidth: largerThanTablet ? 310 : 150,
      toolbarHeight: largerThanTablet ? 90 : 60,
      primary: false,
      foregroundColor: Colors.white,
      flexibleSpace: Container(
        height: largerThanTablet ? 90 : 60,
        width: largerThanTablet ? 310 : 150,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            radius: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 10 : 4,
            colors: const [
              Color.fromRGBO(213, 0, 126, 1),
              Color.fromRGBO(186, 0, 111, 1),
              Color.fromRGBO(147, 0, 88, 1),
            ],
          ),
        ),
      ),
      centerTitle: true,
      titleTextStyle: Theme.of(context).textTheme.titleLarge,
      title: Row(
        mainAxisAlignment: ResponsiveBreakpoints.of(context).largerThan(TABLET)
            ? MainAxisAlignment.spaceEvenly
            : MainAxisAlignment.center,
        children: [
          if (!ResponsiveBreakpoints.of(context).largerThan(TABLET)) const SizedBox(),
          Text(
            'BRAND OD PETMEX',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          if (!ResponsiveBreakpoints.of(context).largerThan(TABLET)) const SizedBox(),
        ],
      ),
      leading: IconButton(
        onPressed: !leadingTapEnabled
            ? null
            : () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
        icon: Image.asset(
          gaplessPlayback: true,
          'assets/images/logo.png',
        ),
      ),
      actions: !largerThanTablet
          ? null
          : [
              if (largerThanTablet) ...getActions(context),
              ...customActions,
            ],
    );
  }

  List<Widget> getActions(BuildContext context) {
    return List.unmodifiable(
      [
        // TextButton(
        //   onPressed: () {},
        //   child: const SocialMediaButton.facebook(
        //     url: 'https://facebook.com',
        //     size: 30,
        //     color: Colors.white,
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.only(right: 18),
        //   child: TextButton(
        //     onPressed: () {},
        //     child: const SocialMediaButton.instagram(
        //       url: 'https://instagram.com',
        //       size: 30,
        //       color: Colors.white,
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
