import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
  void initState() {
    super.initState();
    _getChannels();
  }

  List<Map<String, dynamic>> _list = [];

  void _getChannels() async {
    Response<dynamic> response = await DioUtils().get("/channels");
    Map<String, dynamic> res = response.data as Map<String, dynamic>;
    List<dynamic> channels = res["data"]["channels"] as List<dynamic>;
    _list = channels.cast<Map<String, dynamic>>();
    print(_list);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("频道管理")),
        body: GridView.extent(
          padding: EdgeInsets.all(10),
          maxCrossAxisExtent: 140,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 2,
          children: _list
              .map(
                (e) => Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    e["name"] as String,
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

class DioUtils {
  final Dio _dio = Dio();

  DioUtils() {
    _dio.options.baseUrl = "http://geek.itheima.net/v1_0";
    _dio.options.connectTimeout = Duration(seconds: 10);
    _dio.options.receiveTimeout = Duration(seconds: 10);
    _dio.options.sendTimeout = Duration(seconds: 10);
    _addInterceptor();
  }

  Future<Response<dynamic>> get(
    String url, {
    Map<String, dynamic>? queryParameters,
  }) {
    return _dio.get(url, queryParameters: queryParameters);
  }

  void _addInterceptor() {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (context, handler) {
          // 在发送请求之前做些什么
          return handler.next(context); // 继续发送请求
        },
        onResponse: (context, handler) {
          // 在收到响应数据之前做些什么
          if (context.statusCode! >= 200 && context.statusCode! < 300) {
            handler.next(context);
            return; // 继续处理响应
          }
          handler.reject(
            DioException(requestOptions: context.requestOptions),
          ); // 继续处理响应.
        },
        onError: (context, handler) {
          // 当请求失败时做些什么
          return handler.reject(context); // 继续处理错误
        },
      ),
    );
  }
}
