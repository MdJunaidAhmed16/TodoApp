import 'package:flutter/material.dart';

class CategoryButton extends StatefulWidget {
 
   const CategoryButton({super.key, required this.task, this.gradientColor, required this.category});
    final int task;
    final Gradient? gradientColor;
    final String category;

  @override
  State<CategoryButton> createState() => _CategoryButtonState();
}

class _CategoryButtonState extends State<CategoryButton> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 200,
      height: 104,
      decoration:  BoxDecoration(
        gradient: widget.gradientColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:  [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              widget.category,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 27,
              ),
              //textAlign: TextAlign.center,
              ),
          ),
        ],
      ),
    );
  }
}