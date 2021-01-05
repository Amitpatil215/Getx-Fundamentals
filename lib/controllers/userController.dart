import 'package:get/get.dart';
import 'package:getx_state_management/model/users.dart';

class UserController extends GetxController {
  final user = User().obs;
  updateUser(int count) {
    user.update((val) {
      val.name = "Amit";
      val.count = count;
    });
  }
}
