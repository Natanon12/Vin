import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:vin/card/card_menu.dart';
import 'package:vin/cart/cart.dart';
import 'package:vin/category/categoryProduct.dart';
import 'package:vin/product/Mainproduct.dart';

class Mainhomepage extends StatefulWidget {
  const Mainhomepage({super.key});

  @override
  State<Mainhomepage> createState() => _MainhomepageState();
}

class _MainhomepageState extends State<Mainhomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Color.fromARGB(255, 11, 63, 1),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50))),
        automaticallyImplyLeading: false,
        toolbarHeight: MediaQuery.of(context).size.height * 0.33,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Container(
                    height: 60,
                    width: 60,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 3)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'สวัสดี ' + 'Test Test',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'สั่งอาหารได้เลย !',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(239, 239, 239, 0.43),
                ),
                child: TextField(
                  readOnly: true,
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => AllProduct()),
                    // );
                  },
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white)),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    hintText: 'มองหาอาหารประเภทไหนอยู่',
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
                child: Text(
                  'หมวดหมู่',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => CategoryProduct())));
                            // Navigator.push(
                            //     // context,
                            //     // MaterialPageRoute(
                            //     //     builder: ((context) => CategoryProduct(
                            //     //           cateName: productlist!.data!
                            //     //               .category![index].nameTh!,
                            //     //           categoryid: productlist!
                            //     //               .data!.category![index].id!,
                            //     //         )))
                            //             );
                          },
                          child: Container(
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, left: 10, right: 10),
                              child: Container(
                                width: 30,
                                child: Column(
                                  children: [
                                    Container(
                                        width: 40,
                                        height: 30,
                                        child: Image.asset(
                                          'assets/pngegg.png',
                                          fit: BoxFit.cover,
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 3),
                                      child: Text(
                                        'Test',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.black),
                                        overflow: TextOverflow.visible,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                  )),
            )
          ],
        ),
      ),
      body: Container(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('สินค้าแนะนำ',
                      style: TextStyle(
                          color: Color.fromARGB(255, 11, 63, 1),
                          fontWeight: FontWeight.w600,
                          fontSize: 18)),
                ),
              ),
              Container(
                  width: double.infinity,
                  height: 140,
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return CardMenuHomePage();
                    },
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'สินค้า',
                          style: TextStyle(
                              color: Color.fromARGB(255, 11, 63, 1),
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Mainproduct()),
                              );
                            },
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Color.fromARGB(255, 11, 63, 1),
                              size: 20,
                            )),
                      ],
                    )),
              ),
              Expanded(
                child: Container(
                    // height: MediaQuery.of(context).size.height * 44 / 100,
                    height: 200,
                    child: GridView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: 9,
                        itemBuilder: (context, index) {
                          return CardMenuHomePage();
                        },
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 0.9,
                            mainAxisSpacing: 0,
                            crossAxisSpacing: 0.1,
                            crossAxisCount: 3))),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          MaterialPageRoute route = MaterialPageRoute(
            builder: (
              context,
            ) =>
                MyCart(),
          );
          Navigator.push(
            context,
            PageTransition(
              type: PageTransitionType.rightToLeftWithFade,
              child: MyCart(),
            ),
          );
        },
        child: Icon(
          Icons.shopping_cart,
          color: Color.fromARGB(255, 11, 63, 1),
        ),
      ),
    );
  }
}
