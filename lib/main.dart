import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gq_playground/presentation/pages/home.dart';

import 'presentation/core/bindings/initial_binding.dart';
import 'presentation/pages/home_binding.dart';

void main() {
  // runApp(App());
  runZonedGuarded(() => runApp(App()), (Object error, StackTrace stackTrace) {
    print(error);
  });
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetCupertinoApp(
      initialBinding: InitialBinding(),
      defaultTransition: Transition.cupertino,
      getPages: [
        GetPage(
          name: Navigator.defaultRouteName,
          page: () => HomePage(),
          binding: HomeBinding(),
        )
      ],
    );
  }
}
