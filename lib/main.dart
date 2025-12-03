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
  MainAxisAlignment mainAxisAlignment = MainAxisAlignment.spaceBetween;
  CrossAxisAlignment crsAlign = CrossAxisAlignment.center;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('Align示例'))),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              // 主轴对齐按钮区域
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      '主轴对齐 (MainAxisAlignment)',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              mainAxisAlignment =
                                  MainAxisAlignment.spaceBetween;
                            });
                          },
                          child: Text('spaceBetween'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              mainAxisAlignment = MainAxisAlignment.spaceAround;
                            });
                          },
                          child: Text('spaceAround'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              mainAxisAlignment = MainAxisAlignment.spaceEvenly;
                            });
                          },
                          child: Text('spaceEvenly'),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              mainAxisAlignment = MainAxisAlignment.start;
                            });
                          },
                          child: Text('start'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              mainAxisAlignment = MainAxisAlignment.end;
                            });
                          },
                          child: Text('end'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              mainAxisAlignment = MainAxisAlignment.center;
                            });
                          },
                          child: Text('center'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // 交叉轴对齐按钮区域
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      '交叉轴对齐 (CrossAxisAlignment)',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              crsAlign = CrossAxisAlignment.start;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                crsAlign == CrossAxisAlignment.start
                                ? Colors.green
                                : null,
                          ),
                          child: Text('cross start'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              crsAlign = CrossAxisAlignment.center;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                crsAlign == CrossAxisAlignment.center
                                ? Colors.green
                                : null,
                          ),
                          child: Text('cross center'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              crsAlign = CrossAxisAlignment.end;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: crsAlign == CrossAxisAlignment.end
                                ? Colors.green
                                : null,
                          ),
                          child: Text('cross end'),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              crsAlign = CrossAxisAlignment.stretch;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                crsAlign == CrossAxisAlignment.stretch
                                ? Colors.green
                                : null,
                          ),
                          child: Text('cross stretch'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              crsAlign = CrossAxisAlignment.baseline;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                crsAlign == CrossAxisAlignment.baseline
                                ? Colors.green
                                : null,
                          ),
                          child: Text('cross baseline'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // 分隔线
              Divider(color: Colors.white, thickness: 2),

              // 演示区域
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: mainAxisAlignment,
                    crossAxisAlignment: crsAlign,
                    textBaseline: crsAlign == CrossAxisAlignment.baseline
                        ? TextBaseline.alphabetic
                        : null,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        color: Colors.yellow,
                        width: 50,
                        height: 50,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        color: Colors.yellow,
                        width: 80,
                        height: 30,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        color: Colors.yellow,
                        width: 40,
                        height: 60,
                      ),
                    ],
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
