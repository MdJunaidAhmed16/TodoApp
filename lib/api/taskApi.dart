// ignore: file_names, camel_case_types
import 'package:flutter/material.dart';
import 'package:todo/DB/crud.dart';
import 'package:todo/model/task.dart';

class TaskApi extends ChangeNotifier{

  

  final Database _database = Database();

  Future<void> addTask(Task task) async{
    await _database.add(task);
    notifyListeners();
  }

  Future<void> updateTask(Task task, int refKey) async{
    await _database.update(task, refKey);
  }


  Future<void> delete(int refKey) async{
    await _database.delete(refKey);
    notifyListeners();
  }


  Map<dynamic, dynamic> getTasks(){
    return _database.getMap();
  }
  
  // Set<Task> getAllTasks(){
  //   Set<Task> tasks = {};
  //   Map<dynamic, dynamic> taskMap = getTasks();
  //   List<dynamic> keys = getTasks().keys.toList().reversed.toList();
  //   tasks.clear();
  //   for(dynamic key in keys ){
  //     tasks.add(taskMap[key]);
  //   } 
  //   return tasks.toList().reversed.toSet();
  // }
}