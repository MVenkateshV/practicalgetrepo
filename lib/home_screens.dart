import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanager/navigation_screens.dart';
import 'package:statemanager/post_list_screen.dart';
import 'package:statemanager/state_manage.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(" Get home screen"),

      ),

      body: Column(
        children:[
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Get.to( StateManage());
          },child: Text("Getx Reactive State manage(Obx/Getx)"),

          ),
         SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Get.to( PostListScreen());
          },child: Text("Getx State Builder"),

          ),
  ],
      ),
    );
  }
}
