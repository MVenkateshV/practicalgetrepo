import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanager/flow_api_call/network_controller.dart';

class PostListScreen extends StatefulWidget {
  const PostListScreen({super.key});

  @override
  State<PostListScreen> createState() => _PostListScreenState();
}

class _PostListScreenState extends State<PostListScreen> {
  NetworkController networkController = Get.put(NetworkController());

  @override
  void initState() {
    networkController.getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data List Screen"),
      ),
      body: GetBuilder<NetworkController>(builder: (controller) {
        return controller.isLoading
            ? const CircularProgressIndicator()
            : networkController.dataList.isEmpty
                ? const Center(child: Text("no data"))
                : ListView.builder(
                    itemCount: networkController.dataList.length,
                    itemBuilder: (ctx, index) {
                      return Text(
                          networkController.dataList[index].title ?? " ");
                    });
      }),
    );
  }
}
