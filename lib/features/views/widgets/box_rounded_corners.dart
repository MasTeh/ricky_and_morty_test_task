import 'package:flutter/material.dart';
import 'package:ricky_and_morty_test_task/core/extensions/context_extensions.dart';

class BoxRoundedCorners extends StatelessWidget {
  const BoxRoundedCorners({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(color: context.colorsPalette.card, child: child),
    );
  }
}
