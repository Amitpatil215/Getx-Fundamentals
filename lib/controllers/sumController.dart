import 'package:get/get.dart';

class SumController extends GetxController {
  final count1 = 0.obs;
  final count2 = 0.obs;
  increment1() => count1.value++;
  increment2() => count2.value++;
  int get sum => count1.value + count2.value;
  @override
  void onInit() {
    ever(count1, (value) => print("Count has been changed $value"));
    once(count1, (value) => print("First time count has changed $value"));
    debounce(
        count1,
        (value) => print(
            "Count hasn't been returend for 5 seconds. after that value is  $value"),
        time: 5.seconds);
    interval(count1, (value) => print("Every 1 second count has been changed"),
        time: Duration(seconds: 1));
    super.onInit();
  }
}
