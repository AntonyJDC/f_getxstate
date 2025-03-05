import 'package:get/get.dart';

class CountController extends GetxController {
  // value is the app state .obs means that this variable can be observed from all the UI
  // ignore: prefer_final_fields
  final _value = 0.obs;
  int get valuex => _value.value;
  void setValue (int neww) => _value.value = neww;

  void increment() {
    setValue(valuex + 1);
  }

  void decrease() {
    setValue(valuex - 1);
  }

  void reset() {
    setValue(0);
  }
}