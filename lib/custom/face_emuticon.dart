import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  const EmoticonFace({Key? key, required this.emoticonFace}) : super(key: key);

  final String emoticonFace;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Text(
          emoticonFace,
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}
