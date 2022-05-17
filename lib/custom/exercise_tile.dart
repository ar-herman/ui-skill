// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class ExerciseTole extends StatelessWidget {
  const ExerciseTole(
      {Key? key,
      required this.icon,
      required this.exerciseName,
      required this.numberOf})
      : super(key: key);

  final icon;
  final String exerciseName;
  final int numberOf;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  color: Colors.orange,
                  child: Icon(
                    icon,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //title
                  Text(
                    exerciseName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  //subtitle
                  Text(
                    numberOf.toString() + " Exercises",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ]),
            const Icon(
              Icons.more_horiz,
            ),
          ],
        ),
      ),
    );
  }
}
