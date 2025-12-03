import 'package:flutter/material.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() {
    print("有状态组件createState方法调用");
    return _MainPageState();
  }
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    // TODO: implement initState
    print("有状态组件initState方法调用");
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("有状态组件didChangeDependencies方法调用");
  }

  @override
  void didUpdateWidget(covariant MainPage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("有状态组件didUpdateWidget方法调用");
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print("有状态组件deactivate方法调用");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("有状态组件dispose方法调用");
  }

  @override
  Widget build(BuildContext context) {
    print("有状态组件build方法调用");
    return Container(child: null);
  }
}
