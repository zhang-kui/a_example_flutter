import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
      body: Container(
        padding: EdgeInsets.all(10.0),
        width: MediaQuery.of(context).size.width,
        child: Wrap(
          alignment: WrapAlignment.spaceEvenly, // 主轴方向上的对齐方式，默认为start
          crossAxisAlignment: WrapCrossAlignment.start, // 交叉轴（crossAxis）方向上的对齐方式
          spacing: 10.0, // 主轴方向上的间距
          runSpacing: 1.0, // run的间距
          children: <Widget>[
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade900, child: new Text('A', style: TextStyle(fontSize: 10.0),)),
              label: Text('Camp1'),
            ),
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade900, child: new Text('B', style: TextStyle(fontSize: 10.0),)),
              label: Text('Camp2'),
            ),
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade900, child: new Text('C', style: TextStyle(fontSize: 10.0),)),
              label: Text('Camp3'),
            ),
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade900, child: new Text('D', style: TextStyle(fontSize: 10.0),)),
              label: Text('Camp4'),
            ),
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade900, child: new Text('D', style: TextStyle(fontSize: 10.0),)),
              label: Text('Camp5'),
            ),
          ],
        )
      ),
    );
  }
}
