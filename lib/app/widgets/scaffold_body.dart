import 'package:empiretest/app/core/constants.dart';
import 'package:flutter/material.dart';

class DefaultScaffoldBody extends StatelessWidget {
  final AppBar? appBar;
  final Widget child;
  const DefaultScaffoldBody({
    super.key,
    required this.child,
    this.appBar,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              ImagesPath.scaffoldBackground,
            ),
            fit: BoxFit.cover),
      ),
      child: child,
    );
  }
}
