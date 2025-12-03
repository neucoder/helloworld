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
        appBar: AppBar(title: Center(child: Text('SingleChildScrollView组件'))),
        body: Stack(
          children: [
            Container(
              color: const Color.fromARGB(255, 236, 233, 233),
              padding: EdgeInsets.all(10),
              child: SingleChildScrollView(
                controller: _scrollController,
                child: Column(
                  children: List.generate(50, (index) {
                    return Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 10),
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "我是第${index + 1}个容器",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    );
                  }),
                ),
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: GestureDetector(
                onTap: () {
                  _scrollController.animateTo(
                    _scrollController.position.maxScrollExtent,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.ease,
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  width: 80,
                  height: 80,
                  alignment: Alignment.center,

                  child: Text("去底部", style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: GestureDetector(
                onTap: () {
                  _scrollController.animateTo(
                    _scrollController.position.minScrollExtent,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.ease,
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  width: 80,
                  height: 80,
                  alignment: Alignment.center,

                  child: Text("去顶部", style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
