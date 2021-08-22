import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:gq_playground/presentation/pages/home_store.dart';

class HomePage extends GetView<HomeStore> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: SafeArea(
      child: Obx(() => Column(
            children: [
              Text('total: ${controller.total}'),
              CupertinoButton(
                  child: Text('GetPage'),
                  onPressed: () => controller.loadContractsPage())
            ],
          )),
    ));
  }
}
