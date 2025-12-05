import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/goodList',
      onGenerateRoute: (settings) {
        if (settings.name == '/cartList') {
          bool isLogin = true;
          if (isLogin) {
            return MaterialPageRoute(builder: (context) => CartList());
          } else {
            return MaterialPageRoute(builder: (context) => LoginPage());
          }
        }
        print(settings.name);
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => UnknownPage());
      },

      routes: {'/goodList': (context) => GoodLists()},
    );
  }
}

class GoodLists extends StatefulWidget {
  GoodLists({Key? key}) : super(key: key);

  @override
  _GoodListsState createState() => _GoodListsState();
}

class _GoodListsState extends State<GoodLists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('商品列表')),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/cartList');
          },
          child: Text('加入购物车'),
        ),
      ),
    );
  }
}

class CartList extends StatefulWidget {
  CartList({Key? key}) : super(key: key);

  @override
  _CartListState createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('购物车')),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/abbc');
          },
          child: Text('去结算'),
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('登录')),
      body: Center(
        child: TextButton(onPressed: () {}, child: Text('登录')),
      ),
    );
  }
}

class UnknownPage extends StatefulWidget {
  UnknownPage({Key? key}) : super(key: key);

  @override
  _UnknownPageState createState() => _UnknownPageState();
}

class _UnknownPageState extends State<UnknownPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('未知页面')),
      body: Center(child: Text('未知页面 404')),
    );
  }
}
