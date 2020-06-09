import 'package:flutter/material.dart';
import 'package:flutterbasedemo/cookbook/base_list.dart';
import 'package:flutterbasedemo/cookbook/theme_page.dart';
import 'package:flutterbasedemo/first_flutter_application.dart';
import 'package:flutterbasedemo/flutter_layout_page.dart';
import 'package:flutterbasedemo/less_group_page.dart';
import 'package:flutterbasedemo/plugin_use.dart';
import 'package:flutterbasedemo/statefull_group_page.dart';
import 'package:flutterbasedemo/tabbar/TabBarPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _createList() {
    return <Widget>[
      new GestureDetector(
          child: new Card(
            child: new Container(
              padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
              child: new Center(
                child: new Text('如何使用Flutter包和插件?'),
              ),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              new MaterialPageRoute(builder: (context) => new PluginUse()),
            );
          }),
      new GestureDetector(
        child: new Card(
          child: new Container(
            padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
            child: new Center(
              child: new Text('如何进行Flutter布局开发'),
            ),
          ),
        ),
        onTap: () {
          Navigator.push(
              context,
              new MaterialPageRoute(
                  builder: (context) => new FlutterLayoutPage()));
        },
      ),
      new GestureDetector(
        child: new Card(
          child: new Container(
            padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
            child: new Center(
              child: new Text('StateFullWidget与基础组件'),
            ),
          ),
        ),
        onTap: () {
          Navigator.push(
              context,
              new MaterialPageRoute(
                  builder: (context) => new StateFullGroup()));
        },
      ),
      new GestureDetector(
        child: new Card(
          child: new Container(
            padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
            child: new Center(
              child: new Text('StatelessWidget与基础组件'),
            ),
          ),
        ),
        onTap: () {
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new LessGroupPage()));
        },
      ),
      new GestureDetector(
        child: new Card(
          child: new Container(
            padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
            child: new Center(
              child: new Text('编写第一个flutter应用'),
            ),
          ),
        ),
        onTap: () {
          Navigator.push(
              context,
              new MaterialPageRoute(
                  builder: (context) => new FirstFlutterApp()));
        },
      ),
      new GestureDetector(
        child: new Card(
          child: new Container(
            padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
            child: new Center(
              child: new Text('网络图片'),
            ),
          ),
        ),
        onTap: () {
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new ImagePage()));
        },
      ),
      new GestureDetector(
        child: new Card(
          child: new Container(
            padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
            child: new Center(
              child: new Text('基本List'),
            ),
          ),
        ),
        onTap: () {
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new BaseList()));
        },
      ),
      new GestureDetector(
        child: new Card(
          child: new Container(
            padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
            child: new Center(
              child: Text('底部BottomNavigationBar'),
            ),
          ),
        ),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => TabBarPage()));
        },
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: new Container(
          padding: EdgeInsets.all(15),
          child: ListView(
            children: _createList(),
          ),
        ));
  }
}
