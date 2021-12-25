import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({Key? key, this.onTap, this.isSelected, this.color})
      : super(key: key);
  final VoidCallback? onTap;
  final bool? isSelected;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
              color: isSelected! ? Colors.white70 : Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(
                  color: isSelected! ? Colors.black54 : Colors.grey[300]!)),
          child: CircleAvatar(radius: 16, backgroundColor: color),
        ),
      ),
    );
  }
}

const List<Color> editorColors = [
  Colors.black,
  Colors.grey,
  Colors.white,
  Colors.teal,
  Colors.cyan,
  Colors.blue,
  //Colors.blueAccent,
  //Colors.greenAccent,
  Colors.lightGreen,
  Colors.green,
  Colors.yellow,
  Colors.amber,
  Colors.orange,
  //Colors.deepOrange,
  Colors.red,
  Colors.pink,
  Colors.purple,
  Colors.deepPurple,
  Colors.brown
];
