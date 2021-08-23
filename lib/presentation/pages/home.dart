import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:gq_playground/presentation/pages/home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: SafeArea(
      child: Obx(() => Column(
            children: [
              Text('total: ${controller.total}'),
              CupertinoButton(
                  child: Text('GetPage'),
                  onPressed: () => controller.loadContractsPage()),
              CupertinoButton(
                  child: Text('Increase total'),
                  onPressed: () => controller.increaseTotal())
            ],
          )),
    ));
  }
}
