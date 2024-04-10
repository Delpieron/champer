import 'package:flutter/material.dart';

class AppBarActionWidget extends StatelessWidget {
  const AppBarActionWidget({
    required this.onPressed,
    required this.text,
    this.padding,
    super.key,
  });

  final VoidCallback onPressed;
  final String text;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.only(right: 32),
      child: TextButton(
        onPressed: onPressed,
        child: Text(text, style: Theme.of(context).textTheme.headlineMedium),
      ),
    );
  }
}
