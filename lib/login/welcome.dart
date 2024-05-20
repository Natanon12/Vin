import 'package:flutter/material.dart';
import 'package:vin/login/login.dart';
import 'package:vin/login/register.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/1.png'),
          SizedBox(height: 20), // เพิ่มระยะห่างระหว่างภาพและปุ่ม
          Container(
            width: 350,
            child: ElevatedButton(
              onPressed: () {
                MaterialPageRoute route = MaterialPageRoute(
                  builder: (context) => login(),
                );
                Navigator.push(context, route);
              },
              child: Text(
                'เข้าสู่ระบบ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 11, 63, 1), // สีของปุ่ม
                onPrimary: Colors.white, // สีของข้อความบนปุ่ม
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: 350,
            child: ElevatedButton(
              onPressed: () {
                MaterialPageRoute route = MaterialPageRoute(
                  builder: (context) => Register(),
                );
                Navigator.push(context, route);
              },
              child: Text(
                'ลงทะเบียน',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 202, 202, 202), // สีของปุ่ม
                onPrimary: Color.fromARGB(255, 11, 63, 1), // สีของข้อความบนปุ่ม
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
