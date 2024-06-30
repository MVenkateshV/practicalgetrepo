import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:statemanager/network_controller.dart';

class PostListScreen extends StatefulWidget {
  const PostListScreen({super.key});

  @override
  State<PostListScreen> createState() => _PostListScreenState();
}

class _PostListScreenState extends State<PostListScreen> {
  NetworkController networkController = Get.put(NetworkController());

  void initState() {
    networkController.getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Data List Screen"),
    ),
      body: GetBuilder<NetworkController>(builder: (controller) {
        return controller.isLoading
       ? CircularProgressIndicator()
              :networkController.dataList.isEmpty?
              Center(child: Text("no data"))
            :ListView.builder(
              itemCount: networkController.dataList.length,
              itemBuilder: (ctx, index) {
                return Text("${networkController.dataList[index].title??" "}");
              });
      }) ,

    );


  }
}
