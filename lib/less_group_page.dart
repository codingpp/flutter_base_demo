import 'package:flutter/material.dart';

///StatelessWidget与基础组件
class LessGroupPage extends StatefulWidget {
  @override
  createState() => _MyHomePageState();
}

class _MyHomePageState extends State<LessGroupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StatelessWidget与基础组件'),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Text(
              'I am Text',
              style: new TextStyle(fontSize: 18, color: Colors.green),
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
                  style: new TextStyle(fontSize: 18, color: Colors.green),
                ),
              ),
            ),
            AlertDialog(
              title: Text('盘他'),
              content: Text('你个糟老头子坏的很'),
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
