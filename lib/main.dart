import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/list',
      routes: {
        '/list': (context) => ListPage(),
        '/detail': (context) => DetailPage(),
      },
      home: ListPage(),
    );
  }
}

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('列表')),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                print('点击了列表项$index');
                // 跳转到详情页
                Navigator.pushNamed(
                  context,
                  '/detail',
                  arguments: {"id": index},
                );
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return DetailPage();
                //     },
                //   ),
                // );
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                child: Text(
                  '列表项$index',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int _id = 0;

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      final Map<String, dynamic> args =
          ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
      _id = args['id'] as int;
      print('详情页id:${args['id']}');
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('详情')),
      body: Center(
        child: TextButton(
          onPressed: () {
            // Navigator.pushNamed(context, '/list');
            Navigator.pop(context);
          },
          child: Text('返回列表--:${_id}'),
        ),
      ),
    );
  }
}
