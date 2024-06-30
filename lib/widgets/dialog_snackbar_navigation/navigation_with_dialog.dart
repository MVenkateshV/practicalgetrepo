import 'package:flutter/material.dart';
import 'package:get/get.dart';
///navigation , snackbar using getx,dialog and also arguments passing through getx
class NavigationWithDialog extends StatefulWidget {
  const NavigationWithDialog({super.key});

  @override
  State<NavigationWithDialog> createState() => _NavigationWithDialogState();
}

class _NavigationWithDialogState extends State<NavigationWithDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Get home screen"),
        actions: [
          IconButton(
              onPressed: () {
                Get.changeTheme(
                    Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
              },
              icon: Icon(Get.isDarkMode ? Icons.light_mode : Icons.dark_mode))
        ],
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Get.showSnackbar(const GetSnackBar(
                  messageText: Text("hello to welcome getx"),
                  duration: Duration(seconds: 1),
                  backgroundColor: Colors.green,
                ));
              },
              child: const Text("Show snackbar")),
          /*ElevatedButton(
              onPressed: () {
                Get.dialog(const Text(" Logout"));
              },
              child: const Text("Show Dialog")),*/
          ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                  title: "logout",
                  content: const Text("do you want to log out"),
                  cancel: const Text("cancel"),
                  confirm: const Text("confirm"),
                );
              },
              child: const Text("Show Dialogs")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(const NavigationScreen(),
                  arguments: "Hello Getx in telugu");
            },
            child: const Text("Getx navigation"),
          ),
        ],
      ),
    );
  }
}

///proper navigation with arguments passings
class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationscreenState();
}

class _NavigationscreenState extends State<NavigationScreen> {
  var data;

  @override
  void initState() {
    data = Get.arguments;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              Text(data ?? "no data in agrs"),
              SizedBox(
                width: Get.width,
                child: ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: const Text("Getx back"),
                ),
              ),
            ],
          ),
        ));
  }
}
