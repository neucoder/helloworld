import 'package:flutter/material.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  // 无状态组件只有在创建的时候会调用一次build方法
  // 参数改变的时候也会调用build方法
  @override
  Widget build(BuildContext context) {
    print("无状态组件build方法调用");
    return MaterialApp(
      title: 'Flutter组件初体验',
      theme: ThemeData(scaffoldBackgroundColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: Text('头部区域')),
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
