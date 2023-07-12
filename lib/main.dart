import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'homepage.dart';

void main() async{

await Hive.initFlutter();

var box = await Hive.openBox('mybox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      theme: ThemeData(primarySwatch: Colors.purple),
    );
  }
}

