import 'package:flutter/material.dart';
import 'package:flutter_crud/screens/home_screen.dart';
import 'core/app_theme.dart';

void main() {
  runApp(
    PostApp()
  );
}

class PostApp extends StatelessWidget {
  const PostApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter CRUD',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: HomeScreen(),
    );
  }
}
