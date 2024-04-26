import 'package:flutter/material.dart';

class CandidateDetailsPage extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String description;

  const CandidateDetailsPage({
    required this.name,
    required this.imageUrl,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(imageUrl),
            radius: 50,
          ),
          SizedBox(height: 16),
          Text(
            name,
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 16),
          Text(
            description,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
