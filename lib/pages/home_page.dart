import 'package:flutter/material.dart';
import 'package:flutter_create/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final int days = 30;
  final String name = "New Journey";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Text("Welcome to $days Days of flutter by $name"),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
