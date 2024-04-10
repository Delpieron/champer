import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:social_media_buttons/social_media_button.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({required this.customActions, super.key});

  final List<Widget> customActions;

  @override
  Widget build(BuildContext context) {
    final largerThanTablet =
        ResponsiveBreakpoints.of(context).largerThan(TABLET);
    return largerThanTablet
        ? const SizedBox.shrink()
        : Drawer(
            width: MediaQuery.sizeOf(context).width / 2,
            backgroundColor: Theme.of(context).splashColor,
            child: ListView(
              padding: const EdgeInsets.only(top: 32),
              children: getDrawerActions(context, customActions),
            ),
          );
  }

  List<Widget> getDrawerActions(
      BuildContext context, List<Widget> customActions) {
    return List.unmodifiable(
      [
        ...customActions,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              child: const SocialMediaButton.facebook(
                url: 'https://facebook.com',
                size: 30,
                color: Colors.white,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const SocialMediaButton.instagram(
                url: 'https://instagram.com',
                size: 30,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
