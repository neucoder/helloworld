import 'package:flutter/material.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  count--;
                  print(count);
                  setState(() {});
                },
                child: Text("减"),
              ),
              Text(count.toString(), style: TextStyle(fontSize: 20)),
              TextButton(
                onPressed: () {
                  count++;
                  print(count);
                  setState(() {});
                },
                child: Text("加"),
              ),
            ],
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
