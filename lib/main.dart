import 'package:flutter/material.dart';
import 'login_screen.dart';
void main(){
    runApp(const colorexploreapp());
}
class colorexploreapp extends StatelessWidget {
  const colorexploreapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'color explore',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const LoginScreen(),
    );
  }
}
