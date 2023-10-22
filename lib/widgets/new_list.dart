import 'package:flutter/material.dart';
import 'package:task_three/models/screen_models.dart';

class NewList extends StatelessWidget {
  const NewList({super.key, required this.screens});
  final ScreenModel screens;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          screens.content,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          '- ${screens.author}',
          style: const TextStyle(fontSize: 20, color: Colors.grey),
        ),
      ],
    );
  }
}
