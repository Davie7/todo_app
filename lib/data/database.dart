import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase{
  final _myBox = Hive.box('mybox');
  List todoList = [];

  void createInitialData(){
    todoList = [];
  }

  void loadData(){
    todoList = _myBox.get('TODOLIST');
  }

  void updateDatabase(){
    _myBox.put('TODOLIST', todoList);
  }
}