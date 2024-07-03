import 'package:get/get.dart';

class ParticularController extends GetxController {
  /// button color change example with GetBuilder and update()
  bool colorChange = false;
  buttonColorChange() {
    colorChange = !colorChange;
    update();
  }

  ///updateDropDown values
  String dropdownvalue = 'Apple';
  updateDropDownValues(String updatedValue) {
    dropdownvalue = updatedValue;
    update();
  }

  ///particular index item color change
  int selectedIndex = -1;
  updateIndex(int index) {
    selectedIndex = index;
    update();
  }

  ///checkbox
 bool checkBoxValue = false;
  updateCheckboxValue(bool newvalue){
    checkBoxValue = newvalue;
    update();
  }

  ///checkListTile
  bool checkBoxListTile = false;
  updateCheckboxListTile(bool newvalue) {
    checkBoxListTile = newvalue;
    update();
  }
  int selectedValue = 1;
 updateRadioButtons(selectedvalue){
   selectedValue=selectedvalue;
   update();
 }
 bool isswitch=false;
 updateswitchbutton(bool value){
   isswitch=value;
   update();
 }
int sliders=1;
 updateSliders(value){
   sliders=value;
   update();
 }

}
