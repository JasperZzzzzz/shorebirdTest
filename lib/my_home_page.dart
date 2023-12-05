import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
          title: Text(widget.title),
        ),
        body: const Center(
          child: TabBarView(
            children: [
              Book(
                imgSrc: 'https://openhome.cc/Gossip/images/ACL059300.jpg',
                name: 'Java SE 14 技術手冊',
              ),
              Book(
                imgSrc: 'https://openhome.cc/Gossip/images/ACL054400.jpg',
                name: 'Python 3.7 技術手冊',
              ),
              Book(
                imgSrc: 'https://openhome.cc/Gossip/images/AEL022800.jpg',
                name: 'JavaScript 技術手冊',
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          color: const Color(0XFFFFB2BF),
          child: const TabBar(tabs: [
            Tab(
              text: 'Java',
            ),
            Tab(
              text: 'Python',
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
