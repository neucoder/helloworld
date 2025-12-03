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
        appBar: AppBar(title: Center(child: Text('Align示例'))),
        body: Container(
          padding:
              // EdgeInsets.only(top: 60, left: 40, right: 20, bottom: 10),
              // EdgeInsets.all(30),
              EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          decoration: BoxDecoration(
            color: Colors.yellowAccent,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(color: Colors.blue),
        ),
      ),
    );
  }
}
