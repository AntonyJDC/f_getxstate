import '../../controllers/count_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class W2 extends StatelessWidget {
  const W2({super.key});

  @override
  Widget build(BuildContext context) {
    CountController myController = Get.find();
    return Container(
      color: Colors.deepOrange,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text(myController.valuex.toString())) ,
          ElevatedButton(
              key: const Key('resetButton'),
              onPressed: (){
                myController.reset();
              },
              child: Text('Reset'))
        ],
      ),
    );
  }
}
