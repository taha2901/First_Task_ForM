import 'package:flutter/material.dart';
import 'package:task_three/models/screen_models.dart';
import 'package:task_three/widgets/new_list.dart';

class Screen extends StatelessWidget {
  Screen({super.key, required this.screens});
  final PageController _controller = PageController();
  final List<ScreenModel> screens;
  final List<Color> _pageColors = [
    Colors.blue,
    Colors.green,
    Colors.red,
    Colors.lime,
    Colors.blue,
    Colors.green,
    Colors.red,
    Colors.lime,
    Colors.blue,
    Colors.green,
    Colors.red,
    Colors.lime,
    Colors.blue,
    Colors.green,
    Colors.red,
    Colors.lime,
    Colors.blue,
    Colors.green,
    Colors.red,
    Colors.lime,
  ];
  final int numPages = 20;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: screens.length,
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    color: _pageColors[index],
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: NewList(
                        screens: screens[index],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
