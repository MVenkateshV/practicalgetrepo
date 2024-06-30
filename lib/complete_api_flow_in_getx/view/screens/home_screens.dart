import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanager/complete_api_flow_in_getx/view/screens/state_manage.dart';

import 'post_list_screen.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Get home screen"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(const StateManage());
            },
            child: const Text("Getx Reactive State manage(Obx/Getx)"),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(const PostListScreen());
            },
            child: const Text("Getx State Builder"),
          ),
        ],
      ),
    );
  }
}
