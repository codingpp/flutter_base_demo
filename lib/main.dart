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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: new Container(
          padding: EdgeInsets.all(15),
          child: ListView(
            children: [
              _renderItem('如何使用Flutter包和插件', () => _jump(PluginUse())),
              _renderItem('如何进行Flutter布局开发', () => _jump(FlutterLayoutPage())),
              _renderItem(
                  'StateFullWidget与基础组件', () => _jump(StateFullGroup())),
              _renderItem('StatelessWidget与基础组件', () => _jump(LessGroupPage())),
              _renderItem('编写第一个flutter应用', () => _jump(FirstFlutterApp())),
              _renderItem('网络图片', () => _jump(ImagePage())),
              _renderItem('基本List', () => _jump(BaseList())),
              _renderItem('底部BottomNavigationBar', () => _jump(TabBarPage()))
            ],
          ),
        ));
  }

  ///渲染item
  _renderItem(String title, onTap) {
    return GestureDetector(
      child: Card(
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
          child: Center(
            child: Text(title),
          ),
        ),
      ),
      onTap: onTap,
    );
  }

  ///公共跳转方法
  _jump(Widget page) {
    Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) => page),
    );
  }
}
