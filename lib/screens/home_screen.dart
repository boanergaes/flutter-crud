import 'package:flutter/material.dart';
import '../widgets/post_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> posts = <Map<String, dynamic>>[
    {'userId': 1, 'title': 'Hello There Brothers.', 'body': 'Hello there, how are you doing? Me you ask? Oh am fine. Thanks though.'},
    {'userId': 1, 'title': 'Hello There Brothers. How well might you be I wonder.', 'body': 'Hello there, how are you doing? Me you ask? Oh am fine. Thanks though.'},
    {'userId': 1, 'title': 'Hello There Brothers.', 'body': 'Hello there, how are you doing? Me you ask? Oh am fine. Thanks though. Hello there, how are you doing? Me you ask? Oh am fine. Thanks though. Hello there, how are you doing? Me you ask? Oh am fine. Thanks though.'},
    {'userId': 1, 'title': 'Hello There Brothers.', 'body': 'Hello there, how are you doing? Me you ask? Oh am fine. Thanks though.'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter CRUD'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: posts.length,
        itemBuilder: (context, index) {
          final post = posts[index];
          return PostCard(
            post: post,
            onTap: () {},
            onDelete: () {},
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: const Icon(Icons.add),
        label: const Text('Create Post'),
      ),
    );
  }
}
