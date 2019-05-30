import 'package:flutter/material.dart';

class ContainerWidget extends StatefulWidget {
  @override
  _ContainerWidget createState() => _ContainerWidget();
}
class _ContainerWidget extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('ContainerWidget'),
        centerTitle: true,
      ),
      body: Container(
        key: Key('keyName'), // Container唯一标识符，用于查找更新
        margin: EdgeInsets.only(left: 100,top:10.0), // 围绕在decoration和child之外的空白区域，不属于内容区域。
        padding: EdgeInsets.all(8.0), // decoration内部的空白区域，如果有child的话，child位于padding内部。padding与margin的不同之处在于，padding是包含在content内，而margin则是外部边界，设置点击事件的话，padding区域会响应，而margin区域不会响应。
        alignment: Alignment.center, // 控制child的对齐方式，如果container或者container父节点尺寸大于child的尺寸，这个属性设置会起作用，有很多种对齐方式。
        // color: Colors.grey, // 用来设置container背景色,如果foregroundDecoration设置的话，可能会遮盖color效果。与decoration有冲突
        // width：// container的宽度，设置为double.infinity可以强制在宽度上撑满，不设置，则根据child和父节点两者一起布局。
        // height：// container的高度，设置为double.infinity可以强制在高度上撑满。
        constraints: BoxConstraints.expand( // 添加到child上额外的约束条件。
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2,
        ),
        // foregroundDecoration：// 绘制在child前面的装饰
        decoration: BoxDecoration( // 绘制在child后面的装饰，设置了decoration的话，就不能设置color属性，否则会报错，此时应该在decoration中进行颜色的设置。
          border: Border.all(width: 2.0, color: Colors.red),
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          image: DecorationImage(
            image: NetworkImage('https://github.com/zhang-kui/image_folder/blob/master/page_back.png?raw=true'),
            // centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
          ),
        ),
        transform: Matrix4.rotationZ(0.2), // 设置container的变换矩阵，类型为Matrix4。
        child: Column( // container中的内容widget
          children: <Widget>[
            Text(
              'Container',
              style: new TextStyle(
                decorationColor: Color(0xffffffff), //线的颜色
                decoration: TextDecoration
                    .none, //none无文字装饰   lineThrough删除线   overline文字上面显示线    underline文字下面显示线
                decorationStyle: TextDecorationStyle
                    .solid, //文字装饰的风格  dashed,dotted虚线(简短间隔大小区分)  double三条线  solid两条线
                wordSpacing: 0.0, //单词间隙(负值可以让单词更紧凑)
                letterSpacing: 0.0, //字母间隙(负值可以让字母更紧凑)
                fontStyle: FontStyle.italic, //文字样式，斜体和正常
                fontSize: 12.0, //字体大小
                fontWeight: FontWeight.w900, //字体粗细  粗体和正常
                color: Color(0xffffffff), //文字颜色
              ),
            ),
            Text(
              '''
              Container在Flutter中太常见了。
              '''
            ),
            Text(
              '''
              官方给出的简介，是一个结合了绘制（painting）、定位（positioning）以及尺寸（sizing）widget的widget。
              '''
            ),
            Text(
              '''
              平时使用最多的属性，也就是padding、color、width、height、margin属性.
              '''
            ),
            Text(
              '''
              Container算是目前项目中，最经常用到的一个widget。
              '''
            ),
          ]
        ),
      ),
    );
  }
}

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ContainerWidget();
  }
}