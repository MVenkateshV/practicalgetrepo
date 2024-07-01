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
}
