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

  late TextEditingController _usernameController;
  late TextEditingController _passwordController;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _usernameController = TextEditingController();
    _passwordController = TextEditingController();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('ListView组件'))),
        body: GridView.extent(
          scrollDirection: Axis.vertical, // 滚动方向
          maxCrossAxisExtent: 100, // 每个子项的最大宽度

          padding: EdgeInsets.all(10),
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: List.generate(100, (index) {
            return Container(
              height: 80,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "第${index + 1}项",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            );
          }),
        ),
      ),
    );
  }
}
