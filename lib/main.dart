import 'package:flutter/material.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Hello World')),
        body: Center(
          child: Column(
            children: [
              Text('父组件', style: TextStyle(fontSize: 24.0, color: Colors.red)),
              Child(msg: "好言相---劝"),
            ],
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
      child: Text(
        "子组件-${widget.msg}",
        style: TextStyle(fontSize: 16.0, color: Colors.blue),
      ),
    );
  }
}

// class Child extends StatelessWidget {
//   final String? msg;
//   const Child({Key? key,  this.msg}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Text("子组件-$msg", style: TextStyle(fontSize: 22.0, color: Colors.blue)),
//     );
//   }
// }
