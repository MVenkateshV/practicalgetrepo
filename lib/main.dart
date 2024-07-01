import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanager/particular_value_update/screens/particular_values_update_screen.dart';
import 'package:statemanager/widgets/basic_widgets/sample_basic_widgets_exp.dart';

import 'complete_api_flow_in_getx/view/screens/home_screens.dart';
import 'particular_value_update/bindings/particular_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

      ),
      // home: const HomeScreens(),
      // home: const SampleBasicWidgetsExamples(),
      home: const ParticularValuesUpdate(),
      getPages: [
        GetPage(name: '/ParticularValuesUpdate', page: () => ParticularValuesUpdate(), binding: ParticularValuesBinding()),

      ],
    );
  }
}

