import 'package:flutter/material.dart';

void main() {
  runApp(MainPage());
}

// 自定义无状态组件

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainPageState();
  }
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter组件初体验-有状态组件',
      theme: ThemeData(scaffoldBackgroundColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: Text('头部区域-有状态组件')),
        body: Container(child: Center(child: Text("这是body区域"))),
        bottomNavigationBar: Container(
          color: const Color.fromARGB(255, 245, 247, 160),
          height: 80,
          child: Center(child: Text("这是bottomNavigationBar区域")),
        ),
      ),
    );
  }
}
