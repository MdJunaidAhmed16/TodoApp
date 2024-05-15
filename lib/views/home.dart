// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:todo/task/taskBuilder.dart';
import 'package:todo/utils/customBottomSheet.dart';
import 'package:todo/views/cat.dart';
import 'package:todo/views/welcome.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void rebuild() {
    setState(() {
    });
  }


  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      elevation: 5,
      isScrollControlled: true,
      builder: (context) => CustomBottomSheet()
    ).then((value) => rebuild());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _showBottomSheet(context);
        },
        child: Icon(Icons.add, size: 30,),
      
      ),
      appBar: AppBar(
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Colors.white
        ),
        ),
        leading: 
            IconButton(onPressed: ()=>{}, icon: Icon(Icons.business),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(onPressed: ()=>{}, icon: Icon(Icons.search_outlined)),
            IconButton(onPressed: ()=>{}, icon: Icon(Icons.calendar_month_outlined)),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:10, left : 20, right: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WelcomePage(),
            CategoriesCount(),
            SizedBox(height: 16,),
            Text(
              "Tasks Left",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20
              ),
              ),
           TasksBuilder(),
          ],
        ),
      ),
      
    );
  }
}