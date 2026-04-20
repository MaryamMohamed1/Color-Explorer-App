import 'package:flutter/material.dart';
class ColorDetailScreen extends StatelessWidget {
  final Color color;
  const ColorDetailScreen({super.key, required this.color});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: Center(
        child: ElevatedButton.icon(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
          label: const Text('back to gallery'),
        ),
      ),
    );
  }
}