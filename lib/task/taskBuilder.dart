import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/api/taskApi.dart';
import 'package:todo/model/task.dart';

class TasksBuilder extends StatefulWidget {
  
  const TasksBuilder({super.key});

  @override
  State<TasksBuilder> createState() => _TasksBuilderState();
}

class _TasksBuilderState extends State<TasksBuilder> {
  
  @override
  Widget build(BuildContext context) {
    Task curTask;
    return Consumer<TaskApi>(builder:(context, taskProvidermodel, child){
      Map<dynamic, dynamic> allTasks = taskProvidermodel.getTasks();
      List<dynamic> keys = allTasks.keys.toList().reversed.toList();
      return Expanded(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: keys.length,
          itemBuilder: (context, ind) {
            curTask = allTasks[keys[ind]];
            return  Padding(
              padding:  const EdgeInsets.only(top: 5, bottom: 5),
              child:  Container(
                decoration:  BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(width: 1, color: const Color.fromARGB(255, 193, 193, 193)),
                ),
                child: ListTile(
                  leading: const Icon(Icons.circle_outlined, color: Colors.redAccent,),
                  title: Text(curTask.task),
                  trailing:  IconButton(
                    icon:  const Icon(Icons.delete_outline), 
                    color: Colors.red,
                    onPressed: (){
                      taskProvidermodel.delete(keys[ind]);
                    },
                    ),
                ),
              ),
            );
            // const ListTile(
            //   title: Text("Go to gym"),
            // );
          }
          
          ),
      );
  });
  }
}