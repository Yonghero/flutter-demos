
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final  Color colour;
  final Widget ? cardChild; //? means it is optional
  final Function()? onPress;
  
  ReusableCard({required this.colour, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(15),
        ),
        child: cardChild,
      ),
    );
  }
}
