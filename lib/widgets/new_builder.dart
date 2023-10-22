import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:task_three/models/screen_models.dart';
import 'package:task_three/views/screen.dart';
import '../services/model_services.dart';

class NewBuilder extends StatefulWidget {
  const NewBuilder({super.key});

  @override
  State<NewBuilder> createState() => _NewBuilderState();
}

// ignore: prefer_typing_uninitialized_variables
var future;

class _NewBuilderState extends State<NewBuilder> {
  @override
  void initState() {
    super.initState();
    future = NewServices(Dio()).getToHeadLines();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ScreenModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Screen(screens: snapshot.data!);
        } else if (snapshot.hasError) {
          return const Text('Error');
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
