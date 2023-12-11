import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shorebird_test/home.dart';
import 'package:shorebird_test/my_home/my_home_page.dart';
import 'package:shorebird_test/all_controller_binding.dart';
import 'package:shorebird_test/my_lobby/my_lobby_binding.dart';
import 'package:shorebird_test/my_lobby/my_lobby_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AllControllerBinding(),
      title: 'Flutter Demo Test',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        useMaterial3: true,
      ),
      home: const Home(),
      getPages: [
        GetPage(
            name: '/my_home_page',
            page: () => const MyHomePage(title: '作品'),
            binding: AllControllerBinding()),
        GetPage(
            name: '/my_lobby/my_lobby_page',
            page: () => MyLobbyPage(),
            binding: MyLobbyBinding())
      ],
    );
  }
}
