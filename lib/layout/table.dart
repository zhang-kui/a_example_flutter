import 'package:flutter/material.dart';

class TableWidget extends StatefulWidget {
  @override
  _TableWidget createState() => _TableWidget();
}
class _TableWidget extends State<TableWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('TableWidget'),
        centerTitle: true,
      ),
      body: Container(
        key: Key('keyName'),
        constraints: BoxConstraints.expand(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
        child: Table(
          columnWidths: const <int, TableColumnWidth>{ // 设置每一列的宽度
            0: FixedColumnWidth(1.0),
            1: FixedColumnWidth(1.0),
            2: FixedColumnWidth(1.0),
            3: FixedColumnWidth(1.0),
          },
          // defaultColumnWidth：// 默认的每一列宽度值，默认情况下均分。
          // textDirection：// 文字方向，一般无需考虑。
          // defaultVerticalAlignment：// 每一个cell的垂直方向的alignment。总共包含5种：top：被放置在的顶部；middle：垂直居中；bottom：放置在底部；baseline：文本baseline对齐；fill：充满整个cell。
          // textBaseline：// defaultVerticalAlignment为baseline的时候，会用到这个属性。
          border: TableBorder.all(color: Colors.red, width: 1.0, style: BorderStyle.solid), // 表格边框。
          children: const <TableRow>[
            TableRow(
              children: <Widget>[
                Text('A1'),
                Text('B1'),
                Text('C1'),
                Text('D1'),
              ],
            ),
            TableRow(
              children: <Widget>[
                Text('A2'),
                Text('B2'),
                Text('C2'),
                Text('D2'),
              ],
            ),
            TableRow(
              children: <Widget>[
                Text('A3'),
                Text('B3'),
                Text('C3'),
                Text('D3'),
              ],
            ),
          ],
        )
      ),
    );
  }
}

class TablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TableWidget();
  }
}