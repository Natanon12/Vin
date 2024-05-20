import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vin/contracme/contracme.dart';
import 'package:vin/homapage/mainhomepage.dart';
import 'package:vin/order/myorder.dart';
import 'package:vin/useraccount/useraccount.dart';

class MainNavigationBar extends StatefulWidget {
  const MainNavigationBar({super.key});

  @override
  State<MainNavigationBar> createState() => _MainNavigationBarState();
}

class _MainNavigationBarState extends State<MainNavigationBar> {
  int _selectIndex = 0;
  static List<Widget> _widgetOption = <Widget>[
    Mainhomepage(),
    MyOrder(),
    Contracme(),
    UserAccount(),
  ];
  void _itemTap(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOption.elementAt(_selectIndex),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40)),
        child: Theme(
          data: ThemeData(
            canvasColor: Color.fromARGB(255, 11, 63, 1),
          ),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: 'หน้าหลัก'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.history), label: 'คำสั่งซื้อ'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.message), label: 'ติดต่อร้านค้า'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_balance), label: 'บัญชีของฉัน'),
            ],
            currentIndex: _selectIndex,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            onTap: _itemTap,
          ),
        ),
      ),
    );
  }
}
