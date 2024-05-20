import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class BuyPage extends StatefulWidget {
  // CartDetailResponse mycart;

  BuyPage({
    super.key,
    // required this.mycart,
  });

  @override
  State<BuyPage> createState() => _BuyPageState();
}

class _BuyPageState extends State<BuyPage> {
  // ShowAddressResponse? _showAddressResponse;

  // Future showAddress() async {
  //   ShowAddressResponse showAddressResponse = await MainApi().showAddress();

  //   setState(() {
  //     _showAddressResponse = showAddressResponse;
  //   });
  // }

  // CartDetailResponse? mycart;

  // @override
  // void initState() {
  //   super.initState();
  //   mycart = widget.mycart;
  //   showAddress();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
            alignment: Alignment.topLeft,
            child: Text(
              'ทำการสั่งซื้อ',
              style: TextStyle(
                  color: Color.fromARGB(255, 11, 63, 1),
                  fontWeight: FontWeight.w700,
                  fontSize: 18),
            )),
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            color: Color.fromARGB(255, 11, 63, 1),
            size: 30,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 0, left: 10, right: 5),
                          child: CircleAvatar(
                              backgroundColor:
                                  Color.fromRGBO(13, 81, 148, 0.15),
                              child: Image.asset(
                                'assets/map.png',
                                width: 20,
                                height: 20,
                              )),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 10),
                                child: Text('ที่อยู่จัดส่ง'),
                              ),
                              Container(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, bottom: 10),
                                    child: Text(
                                      // _showAddressResponse != null
                                      //     ? _showAddressResponse!.data != null
                                      //         ? (_showAddressResponse!
                                      //                 .data!.detail! ??
                                      //             "" +
                                      //                 "  " +
                                      //                 _showAddressResponse!
                                      //                     .data!.province! ??
                                      //             "" +
                                      //                 "  " +
                                      //                 _showAddressResponse!
                                      //                     .data!.district! ??
                                      //             "" +
                                      //                 "  " +
                                      //                 _showAddressResponse!
                                      //                     .data!.zipcode! ??
                                      //             "")
                                      // :
                                      "ยังไม่ตั้งค่าที่อยู่"
                                      // : "",
                                      ,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(151, 150, 150, 1)),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // InkWell(
                  //     onTap: () {
                  //       Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) => UserAddress()),
                  //       ).then((value) => showAddress());
                  //     },
                  //     child: Icon(
                  //       Icons.arrow_forward_ios,
                  //       size: 20,
                  //       color: Color.fromRGBO(175, 175, 175, 1),
                  //     )),
                ],
              ),
              Divider(
                thickness: 3,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.topLeft,
                child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 0, bottom: 0),
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount:
                            //  mycart!.data!.cart!.length,
                            5,
                        itemBuilder: ((context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/pngegg.png',
                                  fit: BoxFit.cover,
                                  height: 80,
                                  width: 100,
                                ),
                                // Image.network(
                                //   'https://fortyfourfood.com' +
                                //       mycart!.data!.cart![index].path!,
                                //   width: 100,
                                //   height: 60,

                                // ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 5, top: 10),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Test'
                                              // mycart!
                                              //   .data!.cart![index].productName!
                                              ),
                                          Text('1 ชิ้น'),
                                          // if (mycart!
                                          //         .data!.cart![index].amount! ==
                                          //     1) ...[
                                          //   Text((num.parse(mycart!
                                          //                   .data!
                                          //                   .cart![index]
                                          //                   .price!) *
                                          //               mycart!
                                          //                   .data!
                                          //                   .cart![index]
                                          //                   .amount!)
                                          //           .toStringAsFixed(0) +
                                          //       ' ฿'),
                                          // ] else ...[
                                          //   Text(num.parse(mycart!.data!
                                          //               .cart![index].price!)
                                          //           .toStringAsFixed(0) +
                                          //       ' ฿' +
                                          //       " (${(num.parse(mycart!.data!.cart![index].price!) * mycart!.data!.cart![index].amount!).toStringAsFixed(0)})"),
                                          // ],
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }))),
              ),
              Divider(
                thickness: 3,
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
              //   child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Text('ตัวเลือกการจัดส่ง',
              //             style: TextStyle(
              //                 fontWeight: FontWeight.w500, fontSize: 15)),
              //         InkWell(
              //             onTap: () {
              //               showModalBottomSheet(
              //                   context: context,
              //                   isScrollControlled: true,
              //                   shape: RoundedRectangleBorder(
              //                       borderRadius: BorderRadius.only(
              //                           topLeft: Radius.circular(40),
              //                           topRight: Radius.circular(40))),
              //                   builder: (context) {
              //                     return StatefulBuilder(builder:
              //                         (BuildContext context,
              //                             StateSetter setState) {
              //                       return Container(
              //                         height:
              //                             MediaQuery.of(context).size.height *
              //                                 0.6,
              //                         child: Padding(
              //                           padding:
              //                               MediaQuery.of(context).viewInsets,
              //                           child: Column(
              //                             mainAxisAlignment:
              //                                 MainAxisAlignment.start,
              //                             children: <Widget>[
              //                               Padding(
              //                                 padding: const EdgeInsets.only(
              //                                     top: 30,
              //                                     left: 30,
              //                                     right: 30,
              //                                     bottom: 20),
              //                                 child: Column(
              //                                   children: [
              //                                     InkWell(
              //                                       onTap: () {
              //                                         Navigator.pop(
              //                                           context,
              //                                           MaterialPageRoute(
              //                                               builder:
              //                                                   (context) =>
              //                                                       BuyPage(
              //                                                         amount:
              //                                                             '',
              //                                                         image: '',
              //                                                         name: '',
              //                                                         price: '',
              //                                                         mycart:
              //                                                             CartDetailResponse(),
              //                                                       )),
              //                                         );
              //                                       },
              //                                       child: Column(
              //                                         crossAxisAlignment:
              //                                             CrossAxisAlignment
              //                                                 .start,
              //                                         children: [
              //                                           Column(
              //                                             children: [
              //                                               Row(
              //                                                 mainAxisAlignment:
              //                                                     MainAxisAlignment
              //                                                         .spaceBetween,
              //                                                 crossAxisAlignment:
              //                                                     CrossAxisAlignment
              //                                                         .start,
              //                                                 children: [
              //                                                   Align(
              //                                                     alignment:
              //                                                         Alignment
              //                                                             .centerLeft,
              //                                                     child: Text(
              //                                                       'แบบธรรมดา',
              //                                                       style: TextStyle(
              //                                                           fontSize:
              //                                                               15,
              //                                                           fontWeight:
              //                                                               FontWeight.w500),
              //                                                     ),
              //                                                   ),
              //                                                   Row(
              //                                                     children: [
              //                                                       Text(
              //                                                         '38 ฿',
              //                                                         style: TextStyle(
              //                                                             fontSize:
              //                                                                 15,
              //                                                             fontWeight:
              //                                                                 FontWeight.w500),
              //                                                       ),
              //                                                       Padding(
              //                                                         padding: const EdgeInsets
              //                                                                 .only(
              //                                                             left:
              //                                                                 5),
              //                                                       ),
              //                                                     ],
              //                                                   ),
              //                                                 ],
              //                                               ),
              //                                               Padding(
              //                                                 padding:
              //                                                     const EdgeInsets
              //                                                             .only(
              //                                                         top: 5),
              //                                                 child: Container(
              //                                                     alignment:
              //                                                         Alignment
              //                                                             .topLeft,
              //                                                     child: Text(
              //                                                       'จะได้รับในวันที่ 15 ธ.ค. - 17 ธ.ค.',
              //                                                       style: TextStyle(
              //                                                           color: Colors
              //                                                               .grey,
              //                                                           fontSize:
              //                                                               12),
              //                                                     )),
              //                                               )
              //                                             ],
              //                                           ),
              //                                         ],
              //                                       ),
              //                                     ),
              //                                     Padding(
              //                                       padding:
              //                                           const EdgeInsets.only(
              //                                               top: 5),
              //                                       child: Divider(
              //                                         thickness: 2,
              //                                       ),
              //                                     ),
              //                                   ],
              //                                 ),
              //                               )
              //                             ],
              //                           ),
              //                         ),
              //                       );
              //                     });
              //                   });
              //             },
              //             child: Icon(
              //               Icons.arrow_forward_ios,
              //               size: 15,
              //             )),
              //       ]),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(
              //       top: 10, left: 10, bottom: 5, right: 10),
              //   child: Container(
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(10),
              //         color: Color.fromRGBO(7, 42, 166, 0.12),
              //       ),
              //       width: 400,
              //       height: 80,
              //       alignment: Alignment.topLeft,
              //       child: Padding(
              //         padding: const EdgeInsets.all(15.0),
              //         child: Column(
              //           children: [
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //               children: [
              //                 Row(
              //                   mainAxisAlignment: MainAxisAlignment.start,
              //                   children: [
              //                     Text(
              //                       'แบบธรรมดา',
              //                       style: TextStyle(
              //                           fontSize: 16,
              //                           fontWeight: FontWeight.w500),
              //                     ),
              //                   ],
              //                 ),
              //                 Text(
              //                   '38 ฿',
              //                   style: TextStyle(
              //                     fontSize: 16,
              //                     fontWeight: FontWeight.w600,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             Padding(
              //               padding: const EdgeInsets.only(top: 5),
              //               child: Container(
              //                   alignment: Alignment.topLeft,
              //                   child: Text(
              //                     'จะได้รับในวันที่ 15 ธ.ค. - 17 ธ.ค.',
              //                     style: TextStyle(
              //                         fontSize: 14,
              //                         color: Color.fromRGBO(175, 175, 175, 1)),
              //                   )),
              //             )
              //           ],
              //         ),
              //       )),
              // ),
              Container(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons8-bullet-list-1004.png',
                          scale: 3,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'ข้อมูลการชำระเงิน',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  )),
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 25, right: 25, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Text(
                            'รวมการสั่งซื้อ',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Text(
                          // mycart!.data!.priceAll!.toStringAsFixed(0)
                          '300' + ' ฿',
                          style: TextStyle(
                              color: Color.fromARGB(255, 11, 63, 1),
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Text(
                            'การจัดส่ง',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Text(
                          '300'
                              // mycart!.data!.cartMaxPrice!.priceDelivery!
                              //         .toStringAsFixed(0)
                              +
                              ' ฿',
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 25, right: 25, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'ยอดชำระเงินทั้งหมด',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '300'

                              // (
                              //   mycart!.data!.priceAll! +
                              //             mycart!
                              //                 .data!.cartMaxPrice!.priceDelivery!)
                              //         .toStringAsFixed(0)
                              +
                              ' ฿',
                          style: TextStyle(
                              color: Color.fromARGB(255, 11, 63, 1),
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 3,
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
              //   child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Row(
              //           children: [
              //             Image.asset(
              //               'images/icon/icons8-dollar-coin-100_3.png',
              //               scale: 3,
              //             ),
              //             Padding(
              //               padding: const EdgeInsets.only(left: 5),
              //               child: Text('ช่องทางการชำระเงิน',
              //                   style: TextStyle(
              //                       fontWeight: FontWeight.w500, fontSize: 16)),
              //             ),
              //           ],
              //         ),
              //         InkWell(
              //             onTap: () {
              //               Navigator.push(
              //                 context,
              //                 MaterialPageRoute(
              //                     builder: (context) => SelectPay()),
              //               );
              //             },
              //             child: Icon(
              //               Icons.arrow_forward_ios,
              //               size: 15,
              //             )),
              //       ]),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(
              //       top: 10, left: 10, bottom: 5, right: 10),
              //   child: Container(
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(10),
              //         color: Color.fromRGBO(7, 42, 166, 0.12),
              //       ),
              //       width: 400,
              //       height: 80,
              //       alignment: Alignment.topLeft,
              //       child: Padding(
              //         padding: const EdgeInsets.all(15.0),
              //         child: Column(
              //           children: [
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.start,
              //               children: [
              //                 Text(
              //                   'Mobile Banking',
              //                   style: TextStyle(
              //                       fontSize: 16, fontWeight: FontWeight.w500),
              //                 ),
              //               ],
              //             ),
              //             Padding(
              //               padding: const EdgeInsets.only(top: 5),
              //               child: Container(
              //                   alignment: Alignment.topLeft,
              //                   child: Text(
              //                     'ธนาคารกรุงศรีอยุธยา',
              //                     style: TextStyle(
              //                         fontSize: 14,
              //                         color: Color.fromRGBO(175, 175, 175, 1)),
              //                   )),
              //             )
              //           ],
              //         ),
              //       )),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      width: 120,
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 36, 182, 0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(
                              color: Color.fromRGBO(253, 253, 253, 1),
                              width: 2.0, // Adjust the width as needed
                            ),
                          ),
                        ),
                        onPressed: () {
                          MaterialPageRoute route = MaterialPageRoute(
                            builder: (context) => BuyPage(
                                // mycart: mycart
                                ),
                          );
                          Navigator.push(context, route);
                        },
                        child: Text(
                          'สั่งซื้อ',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
