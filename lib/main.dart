import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 14),
              child: rowInfo(Icons.door_back_door, 'Current Weight', '--- kgs'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 14),
              child: rowInfo(Icons.door_back_door, 'Target Weight', '--- kgs'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 14),
              child: rowInfo(Icons.keyboard, 'Height', '--- cms'),
            ),
          ],
        ),
      ),
    );
  }
}

Widget rowInfo(IconData icon, String name, String kgs) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(color: Colors.white),
      color: Colors.white,
      borderRadius: const BorderRadius.all(
        Radius.circular(5),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(
            width: 25,
          ),
          Text(
            name,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              kgs,
              style: const TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    ),
  );
}
