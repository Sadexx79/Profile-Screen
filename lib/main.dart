// Student ID: 90042334
// Date: 08/31/2025

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Profile Screen"), centerTitle: true),
        body: const ProfileScreen(),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          ProfileCard(),
          SizedBox(height: 30),
          FollowerCounter(),
        ],
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage("https://i.pravatar.cc/150?img=3"),
        ),
        SizedBox(height: 10),
        Text(
          "Geovanni Bonilla",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        Text(
          "Software Developer",
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
        Text(
          "geovanni.bonilla@gmail.com",
          style: TextStyle(fontSize: 16, color: Colors.blue),
        ),
      ],
    );
  }
}

class FollowerCounter extends StatefulWidget {
  const FollowerCounter({super.key});

  @override
  State<FollowerCounter> createState() => _FollowerCounterState();
}

class _FollowerCounterState extends State<FollowerCounter> {
  int _followers = 0;

  void _incrementFollowers() {
    setState(() {
      _followers++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Followers: $_followers", style: const TextStyle(fontSize: 20)),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: _incrementFollowers,
          child: const Text("Follow"),
        ),
      ],
    );
  }
}