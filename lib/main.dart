import 'package:flutter/material.dart';

import 'package:a_example_flutter/home/home.dart';
import 'package:a_example_flutter/training_camp/basics_1.dart';
import 'package:a_example_flutter/training_camp/basics_2.dart';
import 'package:a_example_flutter/training_camp/basics_3.dart';
import 'package:a_example_flutter/layout/container.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: Colors.transparent,
      ),
      //注册路由表
      routes:{
        'home': (context) => HomePage(),
        'basics_1': (context) => Basics_1(),
        'basics_2': (context) => Basics_2(),
        'basics_3': (context) => Basics_3(),
        'container': (context) => ContainerPage(),

      } ,
      home: HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
