import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../controllers/particular_controller.dart';
import '../models/particulars_values_update_model.dart';

class ParticularValuesUpdate extends StatefulWidget {
  const ParticularValuesUpdate({super.key});

  @override
  State<ParticularValuesUpdate> createState() => _ParticularValuesUpdateState();
}

class _ParticularValuesUpdateState extends State<ParticularValuesUpdate> {
  @override
  void initState() {
    Get.put(ParticularController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
            GetBuilder<ParticularController>(builder: (particularController) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: particularController.colorChange
                          ? Colors.red
                          : Colors.green,
                    ),
                    onPressed: () {
                      particularController.buttonColorChange();
                      Fluttertoast.showToast(
                          msg: "Button Color Changed",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    },
                    child: Text("Color Change")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("DropDownButton"),
                    Container(
                      height: 40,
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 0.80),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          hint: Text("SelectedValue"),
                          value: particularController.dropdownvalue,
                          icon: Icon(Icons.keyboard_arrow_down),
                          items: items.map((String items) {
                            return DropdownMenuItem(
                                value: items, child: Text(items));
                          }).toList(),
                          onChanged: (String? newValue) {
                            particularController
                                .updateDropDownValues(newValue!);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: listsData.length,
                      itemBuilder: (context, idx) {
                        return ListTile(
                            onTap: () {
                              particularController.updateIndex(idx);
                            },
                            title: Text(
                              "${listsData[idx]}",
                              style: TextStyle(
                                  color:
                                      particularController.selectedIndex == idx
                                          ? Colors.red
                                          : Colors.green),
                            ));
                      }))
            ],
          );
        }),
      ),
    );
  }
}
