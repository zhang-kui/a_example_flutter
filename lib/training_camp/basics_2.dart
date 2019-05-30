import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:english_words/english_words.dart';

// StatefulWidget子类
class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class TouchButtonWidget extends StatefulWidget {
  @override
  _TouchButtonWidgetState createState() => _TouchButtonWidgetState();
}

// State子类
class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 41;
  void _toggleFavorite() {
    setState(() {
      // If the lake is currently favorited, unfavorite it.
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
        // Otherwise, favorite it.
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          padding: EdgeInsets.all(0.0),
          child: IconButton(
            icon: (_isFavorited
                ? Icon(Icons.star)
                : Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 18.0,
          child: Container(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }
}

// State子类
class _TouchButtonWidgetState extends State<TouchButtonWidget> {
  void _touchButton() {
    showDialog<Null>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('温馨提示'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                    '温馨提示的消息内容,温馨提示的消息内容,温馨提示的消息内容,温馨提示的消息内容,温馨提示的消息内容,温馨提示的消息内容,温馨提示的消息内容,温馨提示的消息内容,温馨提示的消息内容,温馨提示的消息内容!!!'),
                Text(
                    '无参函数调用,无参函数调用,无参函数调用,无参函数调用,无参函数调用,无参函数调用,无参函数调用,无参函数调用,无参函数调用,无参函数调用,无参函数调用!!!'),
                Text(
                    '试试有很多消息是什么效果,试试有很多消息是什么效果,试试有很多消息是什么效果,试试有很多消息是什么效果,试试有很多消息是什么效果,试试有很多消息是什么效果,试试有很多消息是什么效果,试试有很多消息是什么效果,试试有很多消息是什么效果,试试有很多消息是什么效果!!!'),
                Text(
                    '再多点消息呢,再多点消息呢,再多点消息呢,再多点消息呢,再多点消息呢,再多点消息呢,再多点消息呢,再多点消息呢,再多点消息呢,再多点消息呢,再多点消息呢,再多点消息呢,再多点消息呢,再多点消息呢,再多点消息呢,再多点消息呢,再多点消息呢,再多点消息呢,再多点消息呢,再多点消息呢,再多点消息呢!!!'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('确定'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    ).then((val) {
      print(val);
    });
  }

  Column buildButtonColumn(IconData icon, String label) {
    Color color = Colors.red;
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        MaterialButton(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: color),
              Container(
                margin: const EdgeInsets.all(4.0),
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                    color: color,
                  ),
                ),
              ),
            ],
          ),
          onPressed: _touchButton,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildButtonColumn(Icons.call, 'CALL'),
        buildButtonColumn(Icons.near_me, 'ROUTE'),
        buildButtonColumn(Icons.share, 'SHARE'),
      ],
    );
  }
}

class Basics_2 extends StatelessWidget {
  @override
  _onClick() {
    print('手势函数-点击-调用的');
  }

  _onDoubleClick() {
    print('手势函数-双击-调用的');
  }

  _onLongClick() {
    print('手势函数-长按-调用的');
  }

  Widget build(BuildContext context) {
    // if (Platform.isAndroid) {
    //   SystemUiOverlayStyle systemUiOverlayStyle =
    //     SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    //   SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    // }

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          // Icon(
          //   Icons.star,
          //   color: Colors.red[500],
          // ),
          // Text('41'),
          FavoriteWidget(),
        ],
      ),
    );

    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.all(4.0),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget statelessButtonSection = Container(
      padding: EdgeInsets.only(bottom: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumn(Icons.call, 'CALL'),
          buildButtonColumn(Icons.near_me, 'ROUTE'),
          buildButtonColumn(Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.only(
        top: 20.0,
        right: 32.0,
        bottom: 20.0,
        left: 32.0,
      ),
      child: Text(
        '''
        Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''',
        softWrap: true,
        style: TextStyle(
          fontSize: 12.0,
          color: Colors.black87,
        ),
      ),
    );

    return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
              title: Text('Basics_2'),
              centerTitle: true),
          body: ListView(
            children: [
              Container(
                child: GestureDetector(
                  onTap: _onClick, //手势函数名 点击
                  onDoubleTap: _onDoubleClick, //手势函数名 双击
                  onLongPress: _onLongClick, //手势函数名 长按
                  onVerticalDragEnd: (endDetails) {
                    print('手势函数-垂直拖动结束-调用的');
                    print(endDetails);
                  }, //手势函数名 垂直拖动结束
                  onHorizontalDragEnd: (endDetails) {
                    print('手势函数-水平拖动结束-调用的');
                    print(endDetails);
                  }, //手势函数名 水平拖动结束
                  child: Image.asset(
                    'assets/img_01.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              titleSection,
              statelessButtonSection,
              TouchButtonWidget(),
              textSection,
              textSection,
              textSection,
              textSection,
              textSection,
              textSection,
              textSection,
              textSection,
              textSection,
            ],
          )
        );
  }
}
