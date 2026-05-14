import 'package:flutter/material.dart';
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
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter CRUD'), centerTitle: false,),
        body: const Center(
          child: Text('My Post App.'),
        ),
      ),
    );
  }
}
