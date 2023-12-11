import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shorebird_test/my_lobby/my_lobby_controller.dart';

class MyLobbyPage extends StatelessWidget {
  MyLobbyPage({super.key});

  final controller = Get.find<MyLobbyController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
      ),
      body: Center(
        child: GetBuilder<MyLobbyController>(builder: (logic) {
          return Text(
            "${controller.count}",
            style: const TextStyle(fontSize: 50),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increase,
        child: const Icon(Icons.add),
      ),
    );
  }
}
