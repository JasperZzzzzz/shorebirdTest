import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shorebird_test/my_home/my_home_page_controller.dart';

class MyHomePage extends GetView<MyHomePageController> {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    controller.getPackageInfo();
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
            child: Column(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                  color: Colors.orange,
                  image: DecorationImage(
                      image: NetworkImage('url'), fit: BoxFit.cover)),
              child: ListView(
                children: const [Text('左邊側邊欄')],
              ),
            ),
            const ListTile(
              title: Text('個人中心'),
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
            ),
            const Divider(),
            const ListTile(
              title: Text('系統設置'),
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
            )
          ],
        )),
        onDrawerChanged: (isOpened) {
          print('onDrawerChanged');
        },
        endDrawer: Drawer(
          child: Column(children: [
            DrawerHeader(
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    image: DecorationImage(
                        image: NetworkImage('url'), fit: BoxFit.cover)),
                child: ListView(
                  children: const [Text('右邊側邊欄')],
                )),
            const ListTile(
              title: Text('卡片設置'),
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
            ),
            const Divider(),
            const ListTile(
              title: Text('偏好設定'),
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
            )
          ]),
        ),
        onEndDrawerChanged: (isOpened) {
          print('onEndDrawerChanged');
        },
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(title),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                  height: 30,
                  width: context.size?.width,
                  child: Text('${controller.appVersion}')),
              const TabBarView(
                children: [
                  Book(
                    imgSrc: 'https://openhome.cc/Gossip/images/facebook.png',
                    name: 'Python 4.7 技術手冊',
                  ),
                  Book(
                    imgSrc: 'https://openhome.cc/Gossip/images/ACL059300.jpg',
                    name: 'Java SE 13 技術手冊',
                  ),
                  Book(
                    imgSrc: 'https://openhome.cc/Gossip/images/twitter.png',
                    name: 'JavaScript 技術手冊',
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          color: const Color(0XFFFFB2BF),
          child: const TabBar(tabs: [
            Tab(
              text: 'Python',
            ),
            Tab(
              text: 'Java',
            ),
            Tab(
              text: 'JavaScript',
            )
          ]),
        ),
      ),
    );
  }
}

// class _MyHomePageState extends State<MyHomePage> {
//   MyHomePageController controller = Get.find<MyHomePageController>();

//   @override
//   void initState() {
//     super.initState();
//     controller.getPackageInfo();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         drawer: Drawer(
//             child: Column(
//           children: [
//             DrawerHeader(
//               decoration: const BoxDecoration(
//                   color: Colors.orange,
//                   image: DecorationImage(
//                       image: NetworkImage('url'), fit: BoxFit.cover)),
//               child: ListView(
//                 children: const [Text('左邊側邊欄')],
//               ),
//             ),
//             const ListTile(
//               title: Text('個人中心'),
//               leading: CircleAvatar(
//                 child: Icon(Icons.people),
//               ),
//             ),
//             const Divider(),
//             const ListTile(
//               title: Text('系統設置'),
//               leading: CircleAvatar(
//                 child: Icon(Icons.settings),
//               ),
//             )
//           ],
//         )),
//         onDrawerChanged: (isOpened) {
//           print('onDrawerChanged');
//         },
//         endDrawer: Drawer(
//           child: Column(children: [
//             DrawerHeader(
//                 decoration: const BoxDecoration(
//                     color: Colors.blue,
//                     image: DecorationImage(
//                         image: NetworkImage('url'), fit: BoxFit.cover)),
//                 child: ListView(
//                   children: const [Text('右邊側邊欄')],
//                 )),
//             const ListTile(
//               title: Text('卡片設置'),
//               leading: CircleAvatar(
//                 child: Icon(Icons.people),
//               ),
//             ),
//             const Divider(),
//             const ListTile(
//               title: Text('偏好設定'),
//               leading: CircleAvatar(
//                 child: Icon(Icons.settings),
//               ),
//             )
//           ]),
//         ),
//         onEndDrawerChanged: (isOpened) {
//           print('onEndDrawerChanged');
//         },
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text(widget.title),
//         ),
//         body: Center(
//           child: Column(
//             children: [
//               SizedBox(
//                 height: 30,
//                 width: context.size?.width,
//                 child:
//                     Obx(() => Text('Version: ${controller.appVersion.value}')),
//               ),
//               const TabBarView(
//                 children: [
//                   Book(
//                     imgSrc: 'https://openhome.cc/Gossip/images/facebook.png',
//                     name: 'Python 4.7 技術手冊',
//                   ),
//                   Book(
//                     imgSrc: 'https://openhome.cc/Gossip/images/ACL059300.jpg',
//                     name: 'Java SE 13 技術手冊',
//                   ),
//                   Book(
//                     imgSrc: 'https://openhome.cc/Gossip/images/twitter.png',
//                     name: 'JavaScript 技術手冊',
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//         bottomNavigationBar: Container(
//           color: const Color(0XFFFFB2BF),
//           child: const TabBar(tabs: [
//             Tab(
//               text: 'Python',
//             ),
//             Tab(
//               text: 'Java',
//             ),
//             Tab(
//               text: 'JavaScript',
//             )
//           ]),
//         ),
//       ),
//     );
//   }
// }

class Book extends StatelessWidget {
  final String imgSrc;
  final String name;

  const Book({super.key, required this.imgSrc, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.network(imgSrc),
        ),
        Text(name)
      ],
    );
  }
}
