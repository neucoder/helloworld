import 'package:flutter/material.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  // 角度转换为弧度
  double angleToRadians(double angle) {
    return angle / 180 * 3.14;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('app bar')),
        body: Container(
          transform: Matrix4.rotationZ(angleToRadians(5)),
          alignment: Alignment.center,
          width: 200,
          height: 200,
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.yellowAccent, width: 5),
          ),
          child: Text(
            'Hello World',
            style: TextStyle(
              color: const Color.fromRGBO(240, 9, 9, 1),
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
