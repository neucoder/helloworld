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

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('登录'))),
        body: Container(
          color: const Color.fromARGB(255, 92, 86, 86),
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: _usernameController,
                onChanged: (value) {
                  print("用户名：$value");
                },
                onSubmitted: (value) {
                  print("用户名submit：$value");
                },
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20),
                  hintText: '请输入用户名',
                  fillColor: Colors.red,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20),
                  hintText: '请输入密码',
                  fillColor: Colors.blue,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 210, 171, 228),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  onPressed: () {
                    print("用户名：${_usernameController.text}");
                    print("密码：${_passwordController.text}");
                  },
                  child: Text(
                    '登录',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
