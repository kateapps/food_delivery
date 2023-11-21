import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'initial_controller.dart';

class InitialView extends GetView<InitialController> {
  const InitialView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
