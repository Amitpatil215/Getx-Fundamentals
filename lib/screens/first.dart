import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/controllers/userController.dart';
import 'package:getx_state_management/screens/second.dart';
import 'package:getx_state_management/widgets/first_screen_widget.dart';
import '../controllers/countController.dart';

class First extends StatelessWidget {
  final CountController countController = Get.put(CountController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX | State Management"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GetBuilder<CountController>(
              // if u r using controller only here then initilize here only,
              //init: CountController(),
              builder: (controller) => Text(controller.count.toString()),
            ),
            SizedBox(
              height: 40,
            ),
            GetX<UserController>(
              init: UserController(),
              builder: (controller) =>
                  Text('Name:${controller.user.value.name}'),
            ),
            Obx(() {
              return Text(
                  Get.find<UserController>().user.value.count.toString());
            }),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              child: Text("Update Name & Stored Count"),
              onPressed: () {
                Get.find<UserController>()
                    .updateUser(Get.find<CountController>().count);
              },
            ),
            SizedBox(
              height: 100,
            ),
            RaisedButton(
              child: Text('Next Screen'),
              onPressed: () {
                Get.to(Second(), transition: Transition.leftToRight);
              },
            ),
            FirstScreenWidget(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Get.find<CountController>().increment();
          //countController.increment();
        },
      ),
    );
  }
}
