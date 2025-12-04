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
            (index) => Child(
              msg: msgList[index],
              index: index,
              deleteFood: (int i) {
                msgList.removeAt(i);
                setState(() {});
              },
            ),
          ),
        ),
      ),
    );
  }
}

class Child extends StatefulWidget {
  final String msg;
  final int index;
  final Function(int) deleteFood;
  const Child({
    Key? key,
    required this.msg,
    required this.index,
    required this.deleteFood,
  }) : super(key: key);

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
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.blue[50],
            child: Text(
              widget.msg,
              style: TextStyle(fontSize: 20, color: Colors.blue[800]),
            ),
          ),
          IconButton(
            icon: Icon(Icons.delete),
            color: Colors.blue[800],
            onPressed: () {
              widget.deleteFood(widget.index);
            },
          ),
        ],
      ),
    );
  }
}
