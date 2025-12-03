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

  List<Widget> getList() {
    return List.generate(
      20,
      (index) => Container(
        width: 100,
        height: 100,
        color: Colors.primaries[index.toInt() % Colors.primaries.length],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('flex示例'))),
        body: Container(
          width: double.infinity,
          height: double.infinity,

          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 206, 241, 214),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Wrap(
            spacing: 10,
            runSpacing: 10,
            direction: Axis.horizontal,
            alignment: WrapAlignment.spaceBetween,
            children: getList(),
          ),
        ),
      ),
    );
  }
}
