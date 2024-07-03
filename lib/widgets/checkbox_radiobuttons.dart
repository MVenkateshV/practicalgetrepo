import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../particular_value_update/controllers/particular_controller.dart';

///radioListTile/CheckboxListTile/FittedBox/Stack/Align/aspectRatio/checkbox/switch/RichText/intrinsicheight/intrinsicwidth/

class CheckBoxWithRadioButtons extends StatefulWidget {
  const CheckBoxWithRadioButtons({super.key});

  @override
  State<CheckBoxWithRadioButtons> createState() =>
      _CheckBoxWithRadioButtonsState();
}

class _CheckBoxWithRadioButtonsState extends State<CheckBoxWithRadioButtons> {
  List<String> options = ['option1', 'option2'];
  bool isHidden = false;


  @override
  void initState() {
    Get.put(ParticularController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<ParticularController>(builder: (controller) {
        // int _selectedValue = 1;

        return SingleChildScrollView(
          child: Column(children: [
            Stack(
              children: [
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.red,
                ),
                Container(
                  width: 250,
                  height: 250,
                  color: Colors.black,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.purple,
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                    value: controller.checkBoxValue,
                    activeColor: Colors.green,
                    onChanged: (newValue) {
                      controller.updateCheckboxValue(newValue!);
                    }),
                Text('Remember me'),
              ],
            ),
            CheckboxListTile(
              title: Text("text"),
              value: controller.checkBoxListTile,
              onChanged: (newValue) {
                controller.updateCheckboxListTile(newValue!);
              },
              controlAffinity:
                  ListTileControlAffinity.leading, //  <-- leading Checkbox
            ),
            RadioListTile(
              title: Text('Option 1'),
              // Display the title for option 1
              subtitle: const Text('Subtitle for Option 1'),
              // Display a subtitle for option 1
              value: 1,
              // Assign a value of 1 to this option
              groupValue: controller.selectedValue,
              // Use _selectedValue to track the selected option
              onChanged: (value) {
                controller.updateRadioButtons(value);
              },
            ),
            RadioListTile(
              title: Text('Option 2'),
              // Display the title for option 1
              subtitle: const Text('Subtitle for Option 2'),
              // Display a subtitle for option 1
              value: 2,
              // Assign a value of 1 to this option
              groupValue: controller.selectedValue,
              // Use _selectedValue to track the selected option
              onChanged: (value) {
                controller.updateRadioButtons(value);
              },
            ),
            Switch(
              activeColor: Colors.green,
              onChanged: (v) {
                controller.updateswitchbutton(v);
              },
              value: controller.isswitch,
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                "Text",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            FittedBox(
              fit: BoxFit.contain,
              // Specify how the child should be fitted within the constraints
              child: Container(
                width: 200,
                // height: 100,
                color: Colors.black,
                child: const Center(
                  child: Text(
                    'FittedBox Example Instance "GetMaterialController" has been initialized Instance "GetMaterialController" has been initialized Instance "GetMaterialController" has been initialized',
                    overflow: TextOverflow.fade,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            AspectRatio(
              aspectRatio: 3 / 4,
              child: Image.asset(
                "assets/cock.jpg",
                height: 50,
                width: 50,
                fit: BoxFit.contain,
              ),
            ),
            RichText(
              // Controls visual overflow
              overflow: TextOverflow.clip,

              // Controls how the text should be aligned horizontally
              textAlign: TextAlign.end,

              // Control the text direction
              textDirection: TextDirection.rtl,

              // Whether the text should break at soft line breaks
              softWrap: true,

              // The number of font pixels for each logical pixel
              textScaleFactor: 1,
              text: TextSpan(
                text: 'Hello ',
                style: DefaultTextStyle.of(context).style,
                children: const [
                  TextSpan(
                      text: 'Geeks',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: 'venkatesh',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black)),
                ],
              ),
            ),
            const Column(
              children: <Widget>[
                IntrinsicHeight(
                  child: Text('Short text'),
                ),
                IntrinsicHeight(
                  child: Text('This is a longer text that wraps.'),
                ),
                IntrinsicHeight(
                  child: Text('Even longer text that wraps several lines.'),
                ),
              ],
            ),
            const Row(
              children: <Widget>[
                IntrinsicWidth(
                  child: Text('Short'),
                ),
                IntrinsicWidth(
                  child: Text('Medium length'),
                ),
                IntrinsicWidth(
                  child: Text('A really long piece of text that wraps. '),
                ),
              ],
            ),
            SizedBox(height: 10,),
            FractionallySizedBox(
                widthFactor: 1,
                child: Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 10,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(125)),
                  ),
                )
            ), FractionallySizedBox(
                widthFactor: 1,
                child: Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 10,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(125)),
                  ),
                )
            ),
            Offstage(
              offstage: isHidden,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Icon(
                  Icons.flutter_dash,
                  size: 70,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
        ElevatedButton(
        onPressed: () {
        setState(() {
        isHidden = !isHidden;
        });
        },
        child: Text(isHidden ? 'Show' : 'Hide'),
        ),])
        );
      }),
    );
  }
}
