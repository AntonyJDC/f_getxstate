import '../../controllers/count_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class W1 extends StatelessWidget {
  const W1({super.key});

  @override
  Widget build(BuildContext context) {
    CountController myController = Get.find();
    return Container(
      color: Colors.amber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text(myController.valuex.toString())) ,
          ElevatedButton(
              key: const Key('incrementButton'),
              onPressed: (){
                myController.increment();
              },
              child: Text('Increment'))
        ],
      ),
    );
  }
}
