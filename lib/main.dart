import 'package:flutter/material.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  MainAxisAlignment mainAlign = MainAxisAlignment.spaceBetween;
  CrossAxisAlignment crsAlign = CrossAxisAlignment.center;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('Text示例'))),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 210, 211, 241),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text.rich(
            TextSpan(
              text: "Hello ",
              children: [
                TextSpan(
                  text: "World",
                  style: TextStyle(fontSize: 30, color: Colors.red),
                ),
                TextSpan(
                  text: "!",
                  style: TextStyle(fontSize: 30, color: Colors.green),
                ),
              ],
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
                decorationColor: Colors.red,
              ),
            ),
          ),
          //
          // Text(
          //   '今天天气不错哦，真是一个好日子哈哈哈，窗前明月光，疑是地上霜，举头望明月，低头思故乡。',

          //   maxLines: 2,
          //   overflow: TextOverflow.ellipsis,
          //   style: TextStyle(
          //     fontSize: 30,
          //     color: Colors.blue,
          //     fontStyle: FontStyle.italic,
          //     fontWeight: FontWeight.bold,
          //     decoration: TextDecoration.underline,
          //     decorationColor: Colors.red,
          //   ),
          // ),
          // Text(
          //   'hello world',
          //   style: TextStyle(
          //     fontSize: 50,
          //     color: Colors.blue,
          //     fontStyle: FontStyle.italic,
          //     fontWeight: FontWeight.bold,
          //     decoration: TextDecoration.underline,
          //     decorationColor: Colors.red,
          //   ),
          // ),
        ),
      ),
    );
  }
}
