import 'package:flutter/material.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<String> msgList = ["鱼香肉丝", "宫保鸡丁", "红烧肉", "青椒肉丝", "溜肉片", "北京烤鸭"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('父子组件通信')),
        body: GridView.count(
          crossAxisCount: 3,
          childAspectRatio: 2.0,
          children: List.generate(
            msgList.length,
            (index) => Child(msg: msgList[index]),
          ),
        ),
      ),
    );
  }
}

class Child extends StatefulWidget {
  final String msg;
  const Child({Key? key, required this.msg}) : super(key: key);

  @override
  _ChildState createState() => _ChildState();
}

class _ChildState extends State<Child> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        border: Border.all(color: Colors.blue),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Center(
        child: Text(
          widget.msg,
          style: TextStyle(fontSize: 20, color: Colors.blue[800]),
        ),
      ),
    );
  }
}
