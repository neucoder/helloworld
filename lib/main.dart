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
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 100,
            mainAxisSpacing: 10, // 主轴方向间距
            crossAxisSpacing: 10,
            childAspectRatio: 0.8, // 交叉轴方向间距
          ),
          // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //   crossAxisCount: 4, // 每行3个子项
          //   mainAxisSpacing: 10, // 主轴方向间距
          //   crossAxisSpacing: 10, // 交叉轴方向间距
          // ),
          scrollDirection: Axis.vertical, // 滚动方向
          padding: EdgeInsets.all(10),
          itemCount: 100,
          itemBuilder: (context, index) {
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
          },
        ),
      ),
    );
  }
}
