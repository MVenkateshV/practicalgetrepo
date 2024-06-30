import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'getx_state_controller.dart';
import 'my_state_controller.dart';

class StateManage extends StatefulWidget {
  const StateManage({super.key});

  @override
  State<StateManage> createState() => _StateManageState();
}

class _StateManageState extends State<StateManage> {
  MyStateController myStateController = Get.put(MyStateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("State Management"),
      ),
      body: Column(
        // MainAxisAlignment.center,
        children: [
          Center(
            child: Obx(() => Text(
                " Obx Current count :${myStateController.count}",
                style: Theme.of(context).textTheme.headline4)),
          ),
          const SizedBox(
            height: 100,
          ),
          Center(
              child: GetX(
                  init: GetStateController(),
                  builder: (controller) => Column(children: [
                        Text("GetX name is ${controller.name}"),
                        TextField(
                          decoration:
                              const InputDecoration(hintText: "Enter Name"),
                          onChanged: (str) {
                            controller.name.value = str;
                          },
                        )
                      ]))),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myStateController.increment();
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
