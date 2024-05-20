import 'package:flutter/material.dart';
import 'package:vin/card/card_menu.dart';
import 'package:vin/cart/cart.dart';
import 'package:vin/login/login.dart';
import 'package:vin/order/myorder.dart';
import 'package:vin/useraccount/test.dart';

class UserAccount extends StatefulWidget {
  const UserAccount({super.key});

  @override
  State<UserAccount> createState() => _UserAccountState();
}

class _UserAccountState extends State<UserAccount> {
  // LoginRespone? user;
  // String name = "";
  // String image = "";

  // Future<void> getNameUser() async {
  //   final FlutterSecureStorage storage = await FlutterSecureStorage();
  //   AndroidOptions _secureOption() => AndroidOptions(
  //         encryptedSharedPreferences: true,
  //       );
  //   String? user_result =
  //       await storage.read(key: 'user', aOptions: _secureOption());
  //   setState(() {
  //     user = loginResponeFromJson(user_result!);
  //     name = loginResponeFromJson(user_result).data!.name!;
  //     image = loginResponeFromJson(user_result).data!.image!;
  //   });
  // }

  // BuyAgainResponse? buyAgain;
  // Future<BuyAgainResponse> buyAgaine() async {
  //   MainApi api = MainApi();
  //   BuyAgainResponse response = await api.buyAgain().catchError((error) {
  //     print(error.toString());
  //   });
  //   setState(() {
  //     buyAgain = response;
  //   });
  //   return response;
  // }

  // Future<void> _launchUrl(String url) async {
  //   Uri uri = Uri.parse(url);
  //   // if (await canLaunchUrl(uri)) {
  //   await launchUrl(uri, mode: LaunchMode.externalApplication);
  //   // } else {
  //   //   print('error');
  //   // }
  // }

  @override
  void initState() {
    super.initState();
    // getNameUser();
    // buyAgaine();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Color.fromARGB(255, 11, 63, 1),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60))),
        automaticallyImplyLeading: false,
        toolbarHeight: MediaQuery.of(context).size.height * 0.10,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      child: Icon(Icons.person),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black38,
                          width: 1.0,
                        ),
                        // image: DecorationImage(
                        //     image:
                        //         NetworkImage("https://fortyfourfood.com$image"),
                        //     fit: BoxFit.cover),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('สวัสดี ' 'Test'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.featured_play_list_rounded,
                      color: Color.fromARGB(255, 11, 63, 1),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('การซื้อของฉัน'),
                    ),
                  ],
                ),
                InkWell(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text('ประวัติการซื้อ'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyOrder(
                                // index: 0,
                                )),
                      );
                    }),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TestScreen()),
                    );
                  },
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/Box.png',
                          color: Color.fromARGB(255, 11, 63, 1),
                          width: 60,
                          height: 50,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text('ที่ต้องชำระ'),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TestScreen(
                              // index: 1,
                              )),
                    );
                  },
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/deliverybox.png',
                          color: Color.fromARGB(255, 11, 63, 1),
                          width: 60,
                          height: 50,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text('ที่ต้องจัดส่ง'),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyOrder(
                              // index: 2,
                              )),
                    );
                  },
                  child: Column(
                    children: [
                      Container(
                          child: Image.asset(
                        color: Color.fromARGB(255, 11, 63, 1),
                        'assets/truck.png',
                        width: 60,
                        height: 50,
                      )),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text('ที่ต้องได้รับ'),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyOrder(
                              // index: 2,
                              )),
                    );
                  },
                  child: Column(
                    children: [
                      Container(
                          child: Image.asset(
                        color: Color.fromARGB(255, 11, 63, 1),
                        'assets/star.png',
                        width: 60,
                        height: 40,
                      )),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text('ให้คะแนน'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Icon(
                          Icons.shopping_bag_outlined,
                          color: Color.fromARGB(255, 11, 63, 1),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 13),
                        child: Text('ซื้ออีกครั้ง',
                            style: TextStyle(fontSize: 15)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => BuyAgain()),
                            // );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10, right: 5),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Text('ดูเพิ่มเติม'),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                ),
                              ],
                            ),
                          )),
                    ],
                  ),
                ]),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, top: 10, right: 10, bottom: 10),
            child: Container(
                width: double.infinity,
                height: 140,
                child:
                    // buyAgain != null
                    //     ?
                    ListView.builder(
                  itemCount:
                      // buyAgain!.product!.length < 10
                      //     ? buyAgain!.product!.length
                      //     :
                      10,
                  itemBuilder: (context, index) {
                    return CardMenuHomePage(
                        // name: buyAgain!.product![index].productName!,
                        // price: buyAgain!.product![index].price!,
                        // image: "https://fortyfourfood.com" +
                        //     buyAgain!.product![index].path!,
                        // productdetail: buyAgain!
                        //     .product![index].productDetail!
                        //     .toString(),
                        // categoryid: 1,
                        // productId: buyAgain!.product![index].id!,
                        );
                  },
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                )
                // : Container(
                //     child: Center(child: CircularProgressIndicator()),
                //   ),
                ),
          ),
          Column(
            children: [
              InkWell(
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => UserSetting()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 10),
                      child: Icon(
                        Icons.account_circle_outlined,
                        color: Color.fromARGB(255, 11, 63, 1),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 8),
                      child: Text('ตั้งค่าบัญชี'),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Divider(
                  thickness: 3,
                ),
              ),
            ],
          ),
          Column(
            children: [
              InkWell(
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => Myreview()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 10),
                      child: Container(
                        child: Image.asset(
                          'assets/star.png',
                          color: Color.fromARGB(255, 11, 63, 1),
                        ),
                        width: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 8),
                      child: Text('คะแนนของฉัน'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Divider(
                  thickness: 3,
                ),
              ),
            ],
          ),
          Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => login()));
                },
                child: InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25, top: 10),
                        child: Icon(
                          Icons.chat,
                          color: Color.fromARGB(255, 11, 63, 1),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 8),
                        child: Text('คุยกับทางร้าน'),
                      )
                    ],
                  ),
                  onTap: () {
                    // _launchUrl('https://lin.ee/dF8T6sf');
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Divider(
                  thickness: 3,
                ),
              ),
            ],
          ),
          Column(
            children: [
              InkWell(
                onTap: () async {
                  // AndroidOptions _secureOption() => AndroidOptions(
                  //       encryptedSharedPreferences: true,
                  //     );
                  // final FlutterSecureStorage storage =
                  //     await FlutterSecureStorage();
                  // await storage.delete(key: 'user', aOptions: _secureOption());
                  // Navigator.pushAndRemoveUntil(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => MyHome()),
                  //     (route) => false);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 10),
                      child: Icon(
                        Icons.logout,
                        color: Color.fromARGB(255, 11, 63, 1),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 8),
                      child: Text('ออกจากระบบ'),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Divider(
                  thickness: 3,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
