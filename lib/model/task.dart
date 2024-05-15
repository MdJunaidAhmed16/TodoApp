
import 'package:hive/hive.dart';

part 'task.g.dart';

@HiveType(typeId: 1)
class Task{

  @HiveField(0)
  String task;

   @HiveField(1)
  String priority;

   @HiveField(2)
  String date;

  Task(this.task, this.priority, this.date);
}