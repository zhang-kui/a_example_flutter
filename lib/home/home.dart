import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue, child: new Text('D', style: TextStyle(fontSize: 12.0),)),
              label: Text('Camp4'),
            ),
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue, child: new Text('E', style: TextStyle(fontSize: 12.0),)),
              label: Text('Camp5'),
            ),
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue, child: new Text('F', style: TextStyle(fontSize: 12.0),)),
              label: Text('Camp6'),
            ),
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue, child: new Text('G', style: TextStyle(fontSize: 12.0),)),
              label: Text('Camp7'),
            ),
          ],
        )
      ),
    );
  }
}
