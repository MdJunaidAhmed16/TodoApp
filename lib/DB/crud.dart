import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class Database extends ChangeNotifier{

  final _db = Hive.box('TasksDB');

  Future<void> add(Object obj) async{
    await _db.add(obj);
    notifyListeners();
  }

  Future<void> update(Object obj, int refKey) async{
    await _db.put(refKey, obj);
  }


  Future<void> delete(int refKey) async{
    await _db.delete(refKey);
    notifyListeners();
  }

  Map<dynamic, dynamic> getMap(){
    notifyListeners();
    return _db.toMap();
  }

}