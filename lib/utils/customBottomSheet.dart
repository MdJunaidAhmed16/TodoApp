

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/api/taskAPI.dart';
import 'package:todo/model/task.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({super.key});

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {

  TaskApi taskApi = TaskApi();

  TextEditingController taskController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController priorityController = TextEditingController();

  int _prioritySelected = 0;

   final List<Color> colors = [
   const  Color(0xFFF8DB46),
    const Color.fromARGB(255, 255, 61, 84),
    const Color(0xFF5627FF),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.47,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: taskController,
                autofocus: true,
                decoration: const InputDecoration(
                  labelText: "Enter Task Name",
                ),
              ),
              const SizedBox(height: 20),
              const Text("Set Priority"),
              const SizedBox(height: 10),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                         _prioritySelected = 0;
                         priorityController.text  = "0";
                      });
                    },
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: colors[0],
                        borderRadius: const BorderRadius.all(Radius.circular(15)),
                      ),
                      child: _prioritySelected == 0
                          ? const Icon(Icons.check, color: Colors.white, size: 18,)
                          : null,
                    ),
                  ),
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _prioritySelected = 1;
                        priorityController.text  = "1";
                      });
                    },
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: colors[1],
                        borderRadius: const BorderRadius.all(Radius.circular(15)),
                      ),
                      child: _prioritySelected == 1
                          ? const Icon(Icons.check, color: Colors.white, size: 18,)
                          : null,
                    ),
                  ),
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _prioritySelected = 2;
                        priorityController.text  = "2";
                      });
                    },
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: colors[2],
                        borderRadius: const BorderRadius.all(Radius.circular(15)),
                      ),
                      child: _prioritySelected == 2
                          ? const Icon(Icons.check, color: Colors.white, size: 18,)
                          : null,
                    ),
                  ),
                  const SizedBox(width: 20),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
              height: 150,
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                initialDateTime: DateTime(2001, 5, 15),
                
                onDateTimeChanged: (DateTime newDateTime) {
                  dateController.text = newDateTime.toString();
                  // Do something
                },
              ),
            ),
            const SizedBox(height: 6),
            Center(
              child: ElevatedButton(
                    onPressed: ()=>{
                      taskApi.addTask(Task(taskController.text, priorityController.text, dateController.text)),
                      Navigator.of(context).pop(),
                    }, 
                    style:  const ButtonStyle(
                      backgroundColor:  MaterialStatePropertyAll(Color.fromARGB(255, 155, 133, 254),),
                      fixedSize: MaterialStatePropertyAll(Size(100, 45))
                    ),
                    child: const Text(
                      "Done", style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold, 
                        fontSize: 17,
                      ),
                      ),
                    ),
            ),
            ],
          ),
        ),
      );
  }
}