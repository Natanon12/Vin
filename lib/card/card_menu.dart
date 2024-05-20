import 'package:flutter/material.dart';
import 'package:vin/product/Mainproduct.dart';

class CardMenuHomePage extends StatelessWidget {
  CardMenuHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: MediaQuery.of(context).size.height * 0.35,
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Mainproduct()));
        },
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Container(
                  height: 55,
                  width: double.infinity,
                  child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10)),
                      child: Image.asset('assets/pngegg.png'))),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 5),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Test', style: TextStyle(color: Colors.black))),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    style: TextStyle(
                      color: Color.fromARGB(255, 11, 63, 1),
                    ),
                    '300' + " ฿",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
