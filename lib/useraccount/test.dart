import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green),
      body: Container(
        color: Colors.amber,
        child: Column(
          children: [
            Text(
              'data',
              style: TextStyle(),
            ),
            Text('1'),
            Container(
              color: Colors.white,
              child: Row(
                children: [
                  Image.asset(
                    'assets/Facebook_Logo_(2019).png.webp',
                    width: 50,
                    height: 50,
                  ),
                  Text('asdasdasd'),
                ],
              ),
            ),
            Text('data')
          ],
        ),
      ),
    );
  }
}
