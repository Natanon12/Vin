import 'package:flutter/material.dart';

class MyOrder extends StatefulWidget {
  MyOrder({
    super.key,
  });

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  // order.StatusOrderResponse? statusOrderWaitingDelivery;
  // order.StatusOrderResponse? statusOrderDelivery;
  // order.StatusOrderResponse? statusOrderSuccess;
  // order.StatusOrderResponse? statusOrderCancel;

  // Future<order.StatusOrderResponse> statusWaitingDelivery() async {
  //   order.StatusOrderRequest request = order.StatusOrderRequest(
  //       status: "waiting_delivery", statusComments: "");
  //   MainApi api = MainApi();
  //   order.StatusOrderResponse response =
  //       await api.statusOrder(request).catchError((error) {
  //     print(error.toString());
  //   });
  //   print(response.data!.cart!.length);
  //   setState(() {
  //     statusOrderWaitingDelivery = response;
  //   });
  //   return response;
  // }

  // Future<order.StatusOrderResponse> statusDelivery() async {
  //   order.StatusOrderRequest request =
  //       order.StatusOrderRequest(status: "delivery", statusComments: "");
  //   MainApi api = MainApi();
  //   order.StatusOrderResponse response =
  //       await api.statusOrder(request).catchError((error) {
  //     print(error.toString());
  //   });
  //   print(response.data!.cart!.length);
  //   setState(() {
  //     statusOrderDelivery = response;
  //   });

  //   return response;
  // }

  // Future<order.StatusOrderResponse> statusSuccess() async {
  //   order.StatusOrderRequest request =
  //       order.StatusOrderRequest(status: "success", statusComments: "");
  //   MainApi api = MainApi();
  //   order.StatusOrderResponse response =
  //       await api.statusOrder(request).catchError((error) {
  //     print(error.toString());
  //   });
  //   print(response.data!.cart!.length);
  //   setState(() {
  //     statusOrderSuccess = response;
  //   });
  //   return response;
  // }

  // Future<order.StatusOrderResponse> statusCancel() async {
  //   order.StatusOrderRequest request =
  //       order.StatusOrderRequest(status: "cancel", statusComments: "");
  //   MainApi api = MainApi();
  //   order.StatusOrderResponse response =
  //       await api.statusOrder(request).catchError((error) {
  //     print(error.toString());
  //   });
  //   print(response.data!.cart!.length);
  //   setState(() {
  //     statusOrderCancel = response;
  //   });
  //   return response;
  // }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 4, vsync: this,
      // initialIndex: widget.index
    );
    // statusWaitingDelivery();
    // statusDelivery();
    // statusSuccess();
    // statusCancel();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'คำสั่งซื้อของฉัน',
                style: TextStyle(
                    color: Color.fromARGB(255, 11, 63, 1),
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              ),
            )),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            TabBar(
              isScrollable: false,
              indicatorColor: Color.fromARGB(255, 11, 63, 1),
              labelColor: Color.fromARGB(255, 11, 63, 1),
              unselectedLabelColor: Colors.black,
              controller: _tabController,
              tabs: [
                Tab(text: 'ที่ต้องจัดส่ง'),
                Tab(text: 'ที่ต้องได้รับ'),
                Tab(text: 'สำเร็จ'),
                Tab(text: 'ยกเลิกแล้ว'),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.71,
              child: TabBarView(
                children: [
                  Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 20, right: 20),
                      child:
                          // statusOrderWaitingDelivery != null
                          //     ?
                          ListView.builder(
                        itemCount:
                            // statusOrderWaitingDelivery!.data!.cart!.length,
                            9,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/pngegg.png',
                                        width: 130,
                                        height: 100,
                                        fit: BoxFit.fill,
                                      ),
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Expanded(
                                                        child: Text(
                                                      'Test',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                    )),
                                                    Text(
                                                      'ที่ต้องจัดส่ง',
                                                      style: TextStyle(
                                                          color: Colors.red,
                                                          fontWeight:
                                                              FontWeight.w700),
                                                    ),
                                                    InkWell(
                                                        onTap: () {
                                                          // Navigator.push(
                                                          //   context,
                                                          //   MaterialPageRoute(
                                                          //       builder: (context) => DetailOrder(
                                                          //           billID: statusOrderWaitingDelivery!
                                                          //               .data!
                                                          //               .cart![index]
                                                          //               .cart!
                                                          //               .billId!)),
                                                          // );
                                                        },
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 5,
                                                                  top: 5),
                                                          child: Icon(
                                                            Icons
                                                                .arrow_forward_ios,
                                                            size: 15,
                                                            color: Colors.red,
                                                          ),
                                                        )),
                                                  ],
                                                ),
                                                Text(
                                                  '1'
                                                          "  " +
                                                      'กล่อง',
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          151, 150, 150, 1)),
                                                ),
                                                Text(
                                                  '300' + ' ฿',
                                                  style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 11, 63, 1),
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 5),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Row(
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Text(
                                                        'รวมการสั่งซื้อ: ')),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10),
                                                  child: Text(
                                                    // (statusOrderWaitingDelivery!
                                                    //                 .data!
                                                    //                 .cart![
                                                    //                     index]
                                                    //                 .amount! /
                                                    //             100)
                                                    //         .toStringAsFixed(
                                                    //             2)
                                                    '300' + ' ฿',
                                                    style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 11, 63, 1),
                                                        fontWeight:
                                                            FontWeight.w800,
                                                        fontSize: 16),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )),
                                  Divider(
                                    thickness: 3,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromRGBO(240, 75, 22, 0.15),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'assets/deliverybox.png',
                                                  width: 30,
                                                  color: Color.fromRGBO(
                                                      240, 75, 22, 1),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5),
                                                  child: Text(
                                                      'พัสดุที่ต้องจัดส่ง',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 12,
                                                          color: Color.fromRGBO(
                                                              240, 75, 22, 1))),
                                                ),
                                              ],
                                            ),
                                            InkWell(
                                                onTap: () {
                                                  // Navigator.push(
                                                  //   context,
                                                  //   MaterialPageRoute(
                                                  //       builder:
                                                  //           (context) =>
                                                  //               Delivery()),
                                                  // );
                                                },
                                                child: Icon(
                                                  Icons.arrow_forward_ios,
                                                  size: 15,
                                                  color: Color.fromRGBO(
                                                      240, 75, 22, 1),
                                                )),
                                          ]),
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                thickness: 3,
                              ),
                            ],
                          );
                        },
                      )
                      // : Container(
                      //     child: Center(child: CircularProgressIndicator()),
                      //   ),
                      ),
                  Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 20, right: 20),
                      child:
                          // statusOrderDelivery != null
                          //     ?
                          ListView.builder(
                        itemCount: 9,
                        //  statusOrderDelivery!.data!.cart!.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/pngegg.png',
                                        width: 130,
                                        height: 100,
                                        fit: BoxFit.fill,
                                      ),
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Expanded(
                                                        child: Text(
                                                      'Test',
                                                      // statusOrderDelivery!
                                                      //     .data!
                                                      //     .cart![index]
                                                      //     .cart!
                                                      //     .product!
                                                      //     .productName!,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                    )),
                                                    Text(
                                                      'ที่ต้องได้รับ',
                                                      style: TextStyle(
                                                          color: Colors.red,
                                                          fontWeight:
                                                              FontWeight.w700),
                                                    ),
                                                    InkWell(
                                                        onTap: () {
                                                          // Navigator.push(
                                                          //   // context,
                                                          //   // MaterialPageRoute(
                                                          //   //     builder: (context) => DetailOrder(
                                                          //   //         billID: statusOrderDelivery!
                                                          //   //             .data!
                                                          //   //             .cart![index]
                                                          //   //             .cart!
                                                          //   //             .billId!)),
                                                          // );
                                                        },
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 5,
                                                                  top: 5),
                                                          child: Icon(
                                                            Icons
                                                                .arrow_forward_ios,
                                                            size: 15,
                                                            color: Colors.red,
                                                          ),
                                                        )),
                                                  ],
                                                ),
                                                Text(
                                                  '1'
                                                      // statusOrderDelivery!
                                                      //         .data!
                                                      //         .cart![index]
                                                      //         .cart!
                                                      //         .amount
                                                      //         .toString()
                                                      +
                                                      "  " +
                                                      'กล่อง',
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          151, 150, 150, 1)),
                                                ),
                                                Text(
                                                  '300' + '฿',
                                                  style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 11, 63, 1),
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 5),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Row(
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Text(
                                                        'รวมการสั่งซื้อ: ')),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10),
                                                  child: Text(
                                                    '300'
                                                        // (statusOrderDelivery!
                                                        //                 .data!
                                                        //                 .cart![
                                                        //                     index]
                                                        //                 .amount! /
                                                        //             100)
                                                        //         .toStringAsFixed(
                                                        //             2)
                                                        +
                                                        ' ฿',
                                                    style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 11, 63, 1),
                                                        fontWeight:
                                                            FontWeight.w800,
                                                        fontSize: 16),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )),
                                  Divider(
                                    thickness: 3,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromRGBO(236, 170, 70, 0.15),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'assets/closebox.png',
                                                  color: Color.fromRGBO(
                                                      236, 170, 70, 1),
                                                  scale: 2.5,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5),
                                                  child: Text(
                                                      'พัสดุที่ต้องได้รับ',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 12,
                                                          color: Color.fromRGBO(
                                                              236,
                                                              170,
                                                              70,
                                                              1))),
                                                ),
                                              ],
                                            ),
                                            InkWell(
                                                onTap: () {
                                                  // Navigator.push(
                                                  //   context,
                                                  //   MaterialPageRoute(
                                                  //       builder:
                                                  //           (context) =>
                                                  //               Delivery()),
                                                  // );
                                                },
                                                child: Icon(
                                                  Icons.arrow_forward_ios,
                                                  size: 15,
                                                  color: Color.fromRGBO(
                                                      236, 170, 70, 1),
                                                )),
                                          ]),
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                thickness: 3,
                              ),
                            ],
                          );
                        },
                      )
                      // : Container(
                      //     child: Center(child: CircularProgressIndicator()),
                      //   ),
                      ),
                  Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 20, right: 20),
                      child:
                          // statusOrderSuccess != null
                          //     ?
                          ListView.builder(
                        itemCount: 9,
                        // statusOrderSuccess!.data!.cart!.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/pngegg.png',
                                        width: 130,
                                        height: 100,
                                        fit: BoxFit.fill,
                                      ),
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Expanded(
                                                        child: Text(
                                                      'Test',
                                                      // statusOrderSuccess!
                                                      //     .data!
                                                      //     .cart![index]
                                                      //     .cart!
                                                      //     .product!
                                                      //     .productName!,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                    )),
                                                    Text(
                                                      'สำเร็จ',
                                                      style: TextStyle(
                                                          color: Colors.red,
                                                          fontWeight:
                                                              FontWeight.w700),
                                                    ),
                                                    InkWell(
                                                        onTap: () {
                                                          // Navigator.push(
                                                          //   context,
                                                          //   MaterialPageRoute(
                                                          //       builder: (context) => DetailOrder(
                                                          //           billID: statusOrderSuccess!
                                                          //               .data!
                                                          //               .cart![index]
                                                          //               .cart!
                                                          //               .billId!)),
                                                          // );
                                                        },
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 5,
                                                                  top: 5),
                                                          child: Icon(
                                                            Icons
                                                                .arrow_forward_ios,
                                                            size: 15,
                                                            color: Colors.red,
                                                          ),
                                                        )),
                                                  ],
                                                ),
                                                Text(
                                                  '1'
                                                      // statusOrderSuccess!
                                                      //         .data!
                                                      //         .cart![index]
                                                      //         .cart!
                                                      //         .amount
                                                      //         .toString()
                                                      +
                                                      "  " +
                                                      'กล่อง',
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          151, 150, 150, 1)),
                                                ),
                                                Text(
                                                  '300' + '฿',
                                                  style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 11, 63, 1),
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 5),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Row(
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Text(
                                                        'รวมการสั่งซื้อ: ')),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10),
                                                  child: Text(
                                                    '300'
                                                        // (statusOrderSuccess!
                                                        //                 .data!
                                                        //                 .cart![
                                                        //                     index]
                                                        //                 .amount! /
                                                        //             100)
                                                        //         .toStringAsFixed(
                                                        //             2)
                                                        +
                                                        ' ฿',
                                                    style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 11, 63, 1),
                                                        fontWeight:
                                                            FontWeight.w800,
                                                        fontSize: 16),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )),
                                  Divider(
                                    thickness: 3,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromRGBO(17, 199, 57, 0.15),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  width: 30,
                                                  'assets/truck.png',
                                                  color: Color.fromRGBO(
                                                      17, 199, 57, 1),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5),
                                                  child: Text(
                                                      'พัสดุที่จัดส่งสำเร็จแล้ว',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 12,
                                                          color: Color.fromRGBO(
                                                              17, 199, 57, 1))),
                                                ),
                                              ],
                                            ),
                                            InkWell(
                                                onTap: () {
                                                  // Navigator.push(
                                                  //   context,
                                                  //   MaterialPageRoute(
                                                  //       builder:
                                                  //           (context) =>
                                                  //               Delivery()),
                                                  // );
                                                },
                                                child: Icon(
                                                  Icons.arrow_forward_ios,
                                                  size: 15,
                                                  color: Color.fromRGBO(
                                                      17, 199, 57, 1),
                                                )),
                                          ]),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, bottom: 10),
                                    // child: Container(
                                    //   width: 100,
                                    //   height: 30,
                                    //   child: ElevatedButton(
                                    //     style: ButtonStyle(
                                    //       backgroundColor:
                                    //           MaterialStateProperty.all<
                                    //                   Color>(
                                    //               Color.fromRGBO(
                                    //                   255, 255, 255, 1)),
                                    //     ),
                                    //     onPressed: () {
                                    //       MaterialPageRoute route =
                                    //           MaterialPageRoute(
                                    //         builder: (context) =>
                                    //             GiveStar(),
                                    //       );
                                    //       Navigator.push(context, route);
                                    //     },
                                    //     child: Text(
                                    //       'รีวิวสินค้า',
                                    //       style: TextStyle(
                                    //           color: Colors.lightBlue,
                                    //           fontSize: 15,
                                    //           fontWeight: FontWeight.w600),
                                    //     ),
                                    //   ),
                                    // ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, bottom: 10),
                                    child: Container(
                                      width: 120,
                                      height: 30,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                            Color.fromARGB(255, 11, 63, 1),
                                          ),
                                        ),
                                        onPressed: () {
                                          // MaterialPageRoute route =
                                          //     MaterialPageRoute(
                                          //   builder: (context) =>
                                          //       BuyAgain(),
                                          // );
                                          // Navigator.push(context, route);
                                        },
                                        child: Text(
                                          'ซื้ออีกครั้ง',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                thickness: 3,
                              ),
                            ],
                          );
                        },
                      )
                      // : Container(
                      //     child: Center(child: CircularProgressIndicator()),
                      //   ),
                      ),
                  Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 20, right: 20),
                      child:
                          //  statusOrderCancel != null
                          //     ?
                          ListView.builder(
                        itemCount: 9,
                        // statusOrderCancel!.data!.cart!.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/pngegg.png',
                                        width: 130,
                                        height: 100,
                                        fit: BoxFit.fill,
                                      ),
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Expanded(
                                                        child: Text(
                                                      'Test',
                                                      // statusOrderCancel!
                                                      //     .data!
                                                      //     .cart![index]
                                                      //     .cart!
                                                      //     .product!
                                                      //     .productName!,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                    )),
                                                    Text(
                                                      'ยกเลิกแล้ว',
                                                      style: TextStyle(
                                                          color: Colors.red,
                                                          fontWeight:
                                                              FontWeight.w700),
                                                    ),
                                                    InkWell(
                                                        onTap: () {
                                                          // Navigator.push(
                                                          //   context,
                                                          //   MaterialPageRoute(
                                                          //       builder: (context) => DetailOrder(
                                                          //           billID: statusOrderCancel!
                                                          //               .data!
                                                          //               .cart![index]
                                                          //               .cart!
                                                          //               .billId!)),
                                                          // );
                                                        },
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 5,
                                                                  top: 5),
                                                          child: Icon(
                                                            Icons
                                                                .arrow_forward_ios,
                                                            size: 15,
                                                            color: Colors.red,
                                                          ),
                                                        )),
                                                  ],
                                                ),
                                                Text(
                                                  '1'
                                                      // statusOrderCancel!
                                                      //         .data!
                                                      //         .cart![index]
                                                      //         .cart!
                                                      //         .amount
                                                      //         .toString()
                                                      +
                                                      "  " +
                                                      'กล่อง',
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          151, 150, 150, 1)),
                                                ),
                                                Text(
                                                  '300' + '฿',
                                                  style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 11, 63, 1),
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            right: 10, top: 5),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Row(
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Text(
                                                        'รวมการสั่งซื้อ: ')),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10),
                                                  child: Text(
                                                    '300'
                                                        // (statusOrderWaitingDelivery!
                                                        //                 .data!
                                                        //                 .cart![
                                                        //                     index]
                                                        //                 .amount! /
                                                        //             100)
                                                        //         .toStringAsFixed(
                                                        //             2)
                                                        +
                                                        ' ฿',
                                                    style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 11, 63, 1),
                                                        fontWeight:
                                                            FontWeight.w800,
                                                        fontSize: 16),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )),
                                  Divider(
                                    thickness: 3,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, bottom: 10),
                                    child: Container(
                                      width: 120,
                                      height: 30,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                            Color.fromARGB(255, 11, 63, 1),
                                          ),
                                        ),
                                        onPressed: () {
                                          // MaterialPageRoute route =
                                          //     MaterialPageRoute(
                                          //   builder: (context) =>
                                          //       BuyAgain(),
                                          // );
                                          // Navigator.push(context, route);
                                        },
                                        child: Text(
                                          'ซื้ออีกครั้ง',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                thickness: 3,
                              ),
                            ],
                          );
                        },
                      )
                      // : Container(
                      //     child: Center(child: CircularProgressIndicator()),
                      //   ),
                      ),
                ],
                controller: _tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
