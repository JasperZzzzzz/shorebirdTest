import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shorebird_test/controller.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final Controller c = Get.put(Controller());

    return Scaffold(
      appBar: AppBar(
          title: Obx(() => Text(
                'Clicks: ${c.count}',
                style: const TextStyle(color: Colors.yellow),
              ))),
      body: Center(
        child: TextButton(
          onPressed: () {
            Get.to(Other());
          },
          child: const Text(
            'Go to Other',
            style: TextStyle(color: Colors.pink),
          ),
        ),
      ),
      floatingActionButton: IconButton(
        onPressed: () {
          c.increment();
        },
        icon: const Icon(Icons.add),
      ),
    );
  }
}

class Other extends StatelessWidget {
  final Controller c = Get.find();

  Other({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        '${c.count}',
        style: const TextStyle(color: Colors.blue),
      )),
    );
  }
}
