import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.topCenter, 
        child: Wrap(
          alignment: WrapAlignment.start, // 主轴方向上的对齐方式，默认为start
          runAlignment: WrapAlignment.start,  // 次轴方向上的对齐方式，默认为start
          spacing: 0, // 主轴方向上的间距
          runSpacing: 0, // run的间距
          children: <Widget>[
            FlatButton(
              padding: EdgeInsets.all(0),
              child: Chip(
                avatar: CircleAvatar(
                    backgroundColor: Colors.blue, child: new Text('A', style: TextStyle(fontSize: 12.0),)),
                label: Text('basics_1'),
              ),
              onPressed: () => Navigator.pushNamed(context, 'basics_1'),
            ),
            FlatButton(
              padding: EdgeInsets.all(0),
              child: Chip(
                avatar: CircleAvatar(
                    backgroundColor: Colors.blue, child: new Text('B', style: TextStyle(fontSize: 12.0),)),
                label: Text('basics_2'),
              ),
              onPressed: () => Navigator.pushNamed(context, 'basics_2'),
            ),
            FlatButton(
              padding: EdgeInsets.all(0),
              child: Chip(
                avatar: CircleAvatar(
                    backgroundColor: Colors.blue, child: new Text('C', style: TextStyle(fontSize: 12.0),)),
                label: Text('basics_3'),
              ),
              onPressed: () => Navigator.pushNamed(context, 'basics_3'),
            ),
            FlatButton(
              padding: EdgeInsets.all(0),
              child: Chip(
                avatar: CircleAvatar(
                    backgroundColor: Colors.blue, child: new Text('C', style: TextStyle(fontSize: 12.0),)),
                label: Text('Container'),
              ),
              onPressed: () => Navigator.pushNamed(context, 'container'),
            ),
          ],
        )
      ),
    );
  }
}
