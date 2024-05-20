import 'package:flutter/material.dart';

class Contracme extends StatefulWidget {
  const Contracme({super.key});

  @override
  State<Contracme> createState() => _ContracmeState();
}

class _ContracmeState extends State<Contracme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset('assets/line-icon.png')),
    );
  }
}
