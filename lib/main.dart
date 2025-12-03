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
        body: Center(
          child: Container(
            alignment: Alignment.center,
            width: 400,
            height: 600,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Align(
              widthFactor: 2,
              heightFactor: 2,
              child: Icon(Icons.star, size: 100, color: Colors.amberAccent),
            ),
          ),
        ),
      ),
    );
  }
}
