import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    Key? key,
    required this.activeTab,
    required this.index,
    required this.title,
  }) : super(key: key);
  final int activeTab;
  final int index;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: activeTab == index ? Colors.blue : Colors.grey.shade200),
        child: Text(
          title,
          style: TextStyle(
            color: activeTab == index ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
