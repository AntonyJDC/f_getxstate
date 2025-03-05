import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/count_controller.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override 
  Widget build(BuildContext context) {
    CountController myController = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(myController.valuex.toString())),
            ElevatedButton(
                key: const Key('incrementButtonPage2'),
                onPressed: () {
                  myController.increment();
                },
                child: Text('Increment'))
          ],
        ),
      ),
    );
  }
}
