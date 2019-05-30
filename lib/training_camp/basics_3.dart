import 'dart:io';
import 'dart:core';
import 'dart:math' as math;
import 'dart:convert' show json;
import 'dart:convert' show utf8;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:english_words/english_words.dart';


// 定义一个函数
printInteger(int aNumber) {
  print('The number is $aNumber.'); // Print to console.
}

// 执行一些程序
void doSomething() {
  print('The program has been executed.'); // Print to console.
  
  var number = 42; // Declare and initialize a variable.
  printInteger(number); // Call a function.

  // Cosine
  assert(math.cos(math.pi) == -1.0);
  // Sine
  var degrees = 30;
  var radians = degrees * (math.pi / 180);
  // radians is now 0.52359.
  var sinOf30degrees = math.sin(radians);
  // sin 30° = 0.5
  assert((sinOf30degrees - 0.5).abs() < 0.01);

  var short = const Line(1);
  var long = const Line(100);
  assert(short.compareTo(long) <
      0); // compareTo() 函数对于 小于的值返回 <0； 相同的值返回 0； 大于的值返回 >0、

  var uri = Uri.parse('http://example.org:8080/foo/bar#frag');
  assert(uri.scheme == 'http');
  assert(uri.host == 'example.org');
  assert(uri.path == '/foo/bar');
  assert(uri.fragment == 'frag');
  assert(uri.origin == 'http://example.org:8080');

  assert(1 == 1); // 断言只在检查模式下运行有效，如果在生产模式 运行，则断言不会执行
  // assert(1 == 2); // 在Debugging模式下，此句会抛出一个异常，同时有多个异常时只会抛出第一个
}

class Line implements Comparable {
  final length;
  const Line(this.length);
  int compareTo(other) => length - other.length;
}

// StatefulWidget子类
class TextSectionWidget extends StatefulWidget {
  @override
  _textSectionWidget createState() => _textSectionWidget();
}

// State子类
class _textSectionWidget extends State<TextSectionWidget> {
  int _clickTime = 0;
  String str = 'print ==> 输出的字符串';
  _onClick() {
    setState(() {
      _clickTime += 1;
      print('被点击了' + _clickTime.toString());
    });
  }

  _onDoubleClick() {
    var string = utf8.decode([
      0xc3,
      0x8e,
      0xc3,
      0xb1,
      0xc5,
      0xa3,
      0xc3,
      0xa9,
      0x72,
      0xc3,
      0xb1,
      0xc3,
      0xa5,
      0xc5,
      0xa3,
      0xc3,
      0xae,
      0xc3,
      0xb6,
      0xc3,
      0xb1,
      0xc3,
      0xa5,
      0xc4,
      0xbc,
      0xc3,
      0xae,
      0xc5,
      0xbe,
      0xc3,
      0xa5,
      0xc5,
      0xa3,
      0xc3,
      0xae,
      0xe1,
      0xbb,
      0x9d,
      0xc3,
      0xb1
    ]);
    print(string); // 'Îñţérñåţîöñåļîžåţîờñ'

    var scores = [
      {'score': 40},
      {'score': 80},
      {'score': 100, 'overtime': true, 'special_guest': null}
    ];
    var jsonText = json.encode(scores);
    assert(jsonText ==
        '[{"score":40},{"score":80},'
        '{"score":100,"overtime":true,'
        '"special_guest":null}]');

    setState(() {
      _clickTime = 0;
      print('点击次数被清零了');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 20.0,
        right: 32.0,
        bottom: 20.0,
        left: 32.0,
      ),
      child: GestureDetector(
        onTap: _onClick, //手势函数名 点击
        onDoubleTap: _onDoubleClick, //手势函数名 双击
        child: Text(
          str + _clickTime.toString(),
          softWrap: true,
          style: TextStyle(
            fontSize: 13.0,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}

class Basics_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('41'),
        ],
      ),
    );

    return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
              title: Text('Basics_3'),
              centerTitle: true),
          body: ListView(
            children: [
              Container(
                child: Image.asset(
                  'assets/img_01.png',
                  fit: BoxFit.cover,
                ),
              ),
              titleSection,
              TextSectionWidget(),
              FlatButton(
                textTheme: ButtonTextTheme.primary,
                child: Text("执行程序"),
                onPressed: () => doSomething(),
              ),
            ],
          )
    );
  }
}
