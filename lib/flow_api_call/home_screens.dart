import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanager/flow_api_call/post_list_screen.dart';
import 'package:statemanager/flow_api_call/state_manage.dart';

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
