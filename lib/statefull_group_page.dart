import 'package:flutter/material.dart';
import 'package:flutter_color_plugin/flutter_color_plugin.dart';

///StateFullWidget与基础组件
class StateFullGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'StateFullWidget与基础组件',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextStyle textStyle = TextStyle(fontSize: 20, color: Colors.blue);
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateFullWidget与基础组件'),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.grey,
                ),
                activeIcon: Icon(Icons.home, color: Colors.blue),
                title: Text('首页')),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.list,
                  color: Colors.grey,
                ),
                activeIcon: Icon(
                  Icons.list,
                  color: Colors.blue,
                ),
                title: Text('列表'))
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Text('点我'),
      ),
      body: _currentIndex == 0
          ? RefreshIndicator(
              onRefresh: _handleRefresh,
              child: ListView(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(color: Colors.white),
                    alignment: Alignment.center,
                    child: Column(
                      children: <Widget>[
                        Text(
                          'I am Text',
                          style: textStyle,
                        ),
                        Icon(
                          Icons.android,
                          size: 50,
                          color: Colors.red,
                        ),
                        CloseButton(),
                        BackButton(),
                        Chip(
                          avatar: Icon(Icons.people),
                          label: Text('StatelessWidget与基础组件'),
                        ),
                        Divider(
                          height: 10, //容器高度，不是线的高度
                          indent: 10, //左侧间距
                          color: Colors.orange,
                        ),
                        Card(
                          color: Colors.yellow,
                          elevation: 5,
                          margin: EdgeInsets.all(10),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'I am Card',
                              style: textStyle,
                            ),
                          ),
                        ),
                        AlertDialog(
                          title: Text('盘他'),
                          content: Text('你个糟老头子坏的很'),
                        )
                      ],
                    ),
                  ),
                  Image.network(
                    'http://www.devio.org/img/avatar.png',
                    width: 100,
                    height: 100,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        hintText: '请输入',
                        hintStyle: TextStyle(fontSize: 15)),
                  ),
                  Container(
                    height: 100,
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(color: Colors.lightBlueAccent),
                    child: PageView(
                      children: <Widget>[
                        _item('Page1', Colors.deepPurple),
                        _item('Page2', Colors.green),
                        _item('Page3', Colors.red)
                      ],
                    ),
                  )
                ],
              ))
          : Text('hello'),
    );
  }

  Future<Null> _handleRefresh() async {
    await Future.delayed(Duration(milliseconds: 200));
    return null;
  }

  _item(String title, Color color) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(color: color),
      child: Text(
        title,
        style: TextStyle(fontSize: 22, color: Colors.white),
      ),
    );
  }
}
