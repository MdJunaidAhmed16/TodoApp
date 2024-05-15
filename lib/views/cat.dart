// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo/task/taskButton.dart';
import 'package:todo/utils/gradients.dart';

class CategoriesCount extends StatefulWidget {
  const CategoriesCount({super.key});

  @override
  State<CategoriesCount> createState() => _CategoriesCountState();
}

class _CategoriesCountState extends State<CategoriesCount> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
       // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:  [
          CategoryButton(task: 1, category: "Todo", gradientColor: Gradients.pink,),
          SizedBox(width: 10,),
          CategoryButton(task: 1, category: "Doing", gradientColor: Gradients.blue,),
          SizedBox(width: 10,),
          CategoryButton(task: 1, category: "Done", gradientColor: Gradients.red,),
        ],
        ),
    );
  }
}