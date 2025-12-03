import 'package:flutter/material.dart';

void main() {
  runApp(MainPage());
}

// 自定义无状态组件

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter组件初体验',
      theme: ThemeData(scaffoldBackgroundColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: Text('头部区域')),
        body: Container(
          child: Center(
            child: TextButton(
              onPressed: () {
                print("点击了body区域按钮");
              },
              child: Text("这是body区域按钮"),
            ),
            // child: GestureDetector(
            //   child: Text("这是body区域", key: Key("body")),
            //   onTap: () {
            //     // print("点击了body区域");
            //     // 点击body区域后，改变body区域的文本
            //   },
            //   onDoubleTap: () {
            //     print("双击了body区域");
            //   },
            // ),
          ),
        ),
        bottomNavigationBar: Container(
          color: const Color.fromARGB(255, 245, 247, 160),
          height: 80,
          child: Center(child: Text("这是bottomNavigationBar区域")),
        ),
      ),
    );
  }
}
