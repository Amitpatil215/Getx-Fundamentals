import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        RaisedButton(
          child: Text('Snackbar'),
          onPressed: () {
            Get.snackbar(
              "Paasword verified",
              "Logging you in",
              snackPosition: SnackPosition.BOTTOM,
            );
            // Get.showSnackbar(
            //   GetBar(
            //     title: "Paasword verified",
            //     message: "Logging you in",
            //     duration: 2.seconds,
            //   ),
            // );
          },
        ),
        RaisedButton(
          child: Text('Dialogue'),
          onPressed: () {
            Get.defaultDialog(
              title: "Fill this form",
              content: Text("Im a widget inside content"),
            );
          },
        ),
      ],
    );
  }
}
