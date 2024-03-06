import 'package:flutter/material.dart';

class FoodBlogsView extends StatelessWidget {
  const FoodBlogsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Food Blogs',
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          title: Text('Food Blog $index'),
        );
      }),
    );
  }
}
