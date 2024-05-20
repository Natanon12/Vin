import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:vin/buypage/buypage.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  // late Future<CartDetailResponse> loadCart;
  // late CartDetailResponse mycart;

  // Future<CartDetailResponse> getCartDetail() async {
  //   MainApi mainApi = MainApi();
  //   CartDetailResponse result = await mainApi.cartDetail();
  //   setState(() {
  //     mycart = result;
  //   });
  //   return result;
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   loadCart = getCartDetail();
  // }

  // List<bool> _isChecked = [
  //   true,
  //   false,
  // ];
  int item = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
            alignment: Alignment.topLeft,
            child: Text(
              'ตะกร้าสินค้า',
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Expanded(
          //   child:
          // //   FutureBuilder(
          // //       future: loadCart,
          // //       builder: (context, AsyncSnapshot snapshot) {
          // //         if (snapshot.connectionState == ConnectionState.done) {
          // //           CartDetailResponse result = snapshot.data;
          // //           print(result.data!.cart!.length);
          // //           return Padding(
          // //             padding: const EdgeInsets.all(16.0),
          // //             child: Column(
          // //               children: [
          // //                 // Row(
          // //                 //   children: [
          // //                 //     Checkbox(
          // //                 //       shape: CircleBorder(side: BorderSide()),
          // //                 //       fillColor: MaterialStateProperty.all(
          // //                 //           Color.fromARGB(255, 11, 63, 1)),
          // //                 //       value: _isCheckAll,
          // //                 //       onChanged: (value) => setState(() {
          // //                 //         if (_isCheckAll == false) {
          // //                 //           for (var i = 0;
          // //                 //               i < _isChecked!.length;
          // //                 //               i++) {
          // //                 //             setState(() {
          // //                 //               _isChecked![i]['status'] = true;
          // //                 //             });
          // //                 //           }
          // //                 //           setState(() {
          // //                 //             _isCheckAll = true;
          // //                 //           });
          // //                 //         } else {
          // //                 //           for (var i = 0;
          // //                 //               i < _isChecked!.length;
          // //                 //               i++) {
          // //                 //             setState(() {
          // //                 //               _isChecked![i]['status'] = false;
          // //                 //             });
          // //                 //           }
          // //                 //           setState(() {
          // //                 //             _isCheckAll = false;
          // //                 //           });
          // //                 //         }
          // //                 //       }),
          // //                 //     ),
          // //                 //     Text('ทั้งหมด')
          // //                 //   ],
          // //                 // ),
          // //                 SizedBox(height: 16.0),
          // //                 Container(
          // //                   height: MediaQuery.of(context).size.height * 0.68,
          // //                   child: ListView.builder(
          // //                     shrinkWrap: true,
          // //                     itemCount: result.data!.cart!.length,
          // //                     itemBuilder: (context, index) {
          // //                       return Column(
          // //                         children: [
          // //                           Row(
          // //                             children: [
          // //                               // Checkbox(
          // //                               //   shape:
          // //                               //       CircleBorder(side: BorderSide()),
          // //                               //   fillColor: MaterialStateProperty.all(
          // //                               //       Color.fromARGB(255, 11, 63, 1)),
          // //                               //   value: _isChecked![index]['status'],
          // //                               //   onChanged: (value) => setState(() {
          // //                               //     _isChecked![index]['status'] =
          // //                               //         value!;
          // //                               //   }),
          // //                               // ),
          // //                               Image.network(
          // //                                 'https://fortyfourfood.com' +
          // //                                     result.data!.cart![index].path!,
          // //                                 width: 150,
          // //                                 height: 100,
          // //                                 fit: BoxFit.cover,
          // //                               ),
          // //                               Container(
          // //                                 height: 100,
          // //                                 alignment: Alignment.topLeft,
          // //                                 child: Padding(
          // //                                   padding:
          // //                                       const EdgeInsets.only(left: 10),
          // //                                   child: Column(
          // //                                     crossAxisAlignment:
          // //                                         CrossAxisAlignment.start,
          // //                                     children: [
          // //                                       Text(result.data!.cart![index]
          // //                                           .productName!),
          // //                                       // Text('1 กล่อง'),
          // //                                       if (result.data!.cart![index]
          // //                                               .amount! ==
          // //                                           1) ...[
          // //                                         Text((num.parse(result
          // //                                                         .data!
          // //                                                         .cart![index]
          // //                                                         .price!) *
          // //                                                     result
          // //                                                         .data!
          // //                                                         .cart![index]
          // //                                                         .amount!)
          // //                                                 .toStringAsFixed(0) +
          // //                                             ' ฿'),
          // //                                       ] else ...[
          // //                                         Text(num.parse(result
          // //                                                     .data!
          // //                                                     .cart![index]
          // //                                                     .price!)
          // //                                                 .toStringAsFixed(0) +
          // //                                             ' ฿' +
          // //                                             " (${(num.parse(result.data!.cart![index].price!) * result.data!.cart![index].amount!).toStringAsFixed(0)})"),
          // //                                       ],
          // //                                       Row(
          // //                                         children: [
          // //                                           Row(
          // //                                             children: [
          // //                                               InkWell(
          // //                                                 onTap: () {
          // //                                                   if (result
          // //                                                           .data!
          // //                                                           .cart![
          // //                                                               index]
          // //                                                           .amount ==
          // //                                                       1) {
          // //                                                     showDialog<
          // //                                                         String>(
          // //                                                       context:
          // //                                                           context,
          // //                                                       builder: (BuildContext
          // //                                                               context) =>
          // //                                                           AlertDialog(
          // //                                                         title: const Text(
          // //                                                             'คำเตือน'),
          // //                                                         content: Text(
          // //                                                             'คุณต้องการนำสินค้านี้ออกใช่หรือไม่'),
          // //                                                         actions: <Widget>[
          // //                                                           TextButton(
          // //                                                             onPressed:
          // //                                                                 () =>
          // //                                                                     Navigator.pop(context),
          // //                                                             child: const Text(
          // //                                                                 'ยกเลิก'),
          // //                                                           ),
          // //                                                           TextButton(
          // //                                                             onPressed:
          // //                                                                 () {
          // //                                                               Navigator.pop(
          // //                                                                   context);
          // //                                                               EasyLoading
          // //                                                                   .show();
          // //                                                               CartEditRequest
          // //                                                                   cartEditRequest =
          // //                                                                   CartEditRequest();
          // //                                                               cartEditRequest.productId = result
          // //                                                                   .data!
          // //                                                                   .cart![index]
          // //                                                                   .productId;
          // //                                                               cartEditRequest.type =
          // //                                                                   'sub';
          // //                                                               MainApi
          // //                                                                   mainApi =
          // //                                                                   MainApi();
          // //                                                               mainApi.editCart(cartEditRequest).then(
          // //                                                                   (value) {
          // //                                                                 EasyLoading.showSuccess(
          // //                                                                     'สำเร็จ');
          // //                                                                 setState(
          // //                                                                     () {
          // //                                                                   loadCart =
          // //                                                                       getCartDetail();
          // //                                                                 });
          // //                                                               }).catchError(
          // //                                                                   (error) {
          // //                                                                 EasyLoading.showError(
          // //                                                                     error.toString());
          // //                                                               });
          // //                                                             },
          // //                                                             child: const Text(
          // //                                                                 'ตกลง'),
          // //                                                           ),
          // //                                                         ],
          // //                                                       ),
          // //                                                     );
          // //                                                   } else {
          // //                                                     EasyLoading
          // //                                                         .show();
          // //                                                     CartEditRequest
          // //                                                         cartEditRequest =
          // //                                                         CartEditRequest();
          // //                                                     cartEditRequest
          // //                                                             .productId =
          // //                                                         result
          // //                                                             .data!
          // //                                                             .cart![
          // //                                                                 index]
          // //                                                             .productId;
          // //                                                     cartEditRequest
          // //                                                         .type = 'sub';
          // //                                                     MainApi mainApi =
          // //                                                         MainApi();
          // //                                                     mainApi
          // //                                                         .editCart(
          // //                                                             cartEditRequest)
          // //                                                         .then(
          // //                                                             (value) {
          // //                                                       EasyLoading
          // //                                                           .showSuccess(
          // //                                                               'สำเร็จ');
          // //                                                       setState(() {
          // //                                                         loadCart =
          // //                                                             getCartDetail();
          // //                                                       });
          // //                                                     }).catchError(
          // //                                                             (error) {
          // //                                                       EasyLoading
          // //                                                           .showError(error
          // //                                                               .toString());
          // //                                                     });
          // //                                                   }
          // //                                                 },
          // //                                                 child: Icon(
          // //                                                   Icons.remove_circle,
          // //                                                   color:
          // //                                                       Color.fromRGBO(
          // //                                                           13,
          // //                                                           81,
          // //                                                           148,
          // //                                                           1),
          // //                                                 ),
          // //                                               ),
          // //                                               Padding(
          // //                                                 padding:
          // //                                                     const EdgeInsets
          // //                                                         .only(
          // //                                                         left: 5,
          // //                                                         right: 5),
          // //                                                 child: Text(result
          // //                                                     .data!
          // //                                                     .cart![index]
          // //                                                     .amount!
          // //                                                     .toString()),
          // //                                               ),
          // //                                               InkWell(
          // //                                                 onTap: () {
          // //                                                   EasyLoading.show();
          // //                                                   CartEditRequest
          // //                                                       cartEditRequest =
          // //                                                       CartEditRequest();
          // //                                                   cartEditRequest
          // //                                                           .productId =
          // //                                                       result
          // //                                                           .data!
          // //                                                           .cart![
          // //                                                               index]
          // //                                                           .productId;
          // //                                                   cartEditRequest
          // //                                                       .type = 'add';
          // //                                                   MainApi mainApi =
          // //                                                       MainApi();
          // //                                                   mainApi
          // //                                                       .editCart(
          // //                                                           cartEditRequest)
          // //                                                       .then((value) {
          // //                                                     EasyLoading
          // //                                                         .showSuccess(
          // //                                                             'สำเร็จ');
          // //                                                     setState(() {
          // //                                                       loadCart =
          // //                                                           getCartDetail();
          // //                                                     });
          // //                                                   }).catchError(
          // //                                                           (error) {
          // //                                                     EasyLoading
          // //                                                         .showError(error
          // //                                                             .toString());
          // //                                                   });
          // //                                                 },
          // //                                                 child: Icon(
          // //                                                   Icons.add_circle,
          // //                                                   color:
          // //                                                       Color.fromRGBO(
          // //                                                           13,
          // //                                                           81,
          // //                                                           148,
          // //                                                           1),
          // //                                                 ),
          // //                                               ),
          // //                                             ],
          // //                                           ),
          // //                                         ],
          // //                                       )
          // //                                     ],
          // //                                   ),
          // //                                 ),
          // //                               ),
          // //                             ],
          // //                           ),
          // //                           SizedBox(
          // //                             height: 20,
          // //                           )
          // //                         ],
          // //                       );
          // //                     },
          // //                   ),
          // //                 )
          // //               ],
          // //             ),
          // //           );
          // //         } else {
          // //           return Center(child: CircularProgressIndicator());
          // //         }
          // //       }),
          // ),
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 11, 63, 1),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'รวมทั้งหมด :',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                      // FutureBuilder(
                      //     future: loadCart,
                      //     builder: (context, AsyncSnapshot snapshot) {
                      //       if (snapshot.connectionState ==
                      //           ConnectionState.done) {
                      //         CartDetailResponse result = snapshot.data;

                      //         return Text(
                      //           result.data!.priceAll!.toStringAsFixed(0) +
                      //               ' ฿',
                      //           style: TextStyle(
                      //               color: Colors.white,
                      //               fontWeight: FontWeight.w600,
                      //               fontSize: 18),
                      //         );
                      //       } else {
                      //         return Text(
                      //           '0 ฿',
                      //           style: TextStyle(
                      //               color: Colors.white,
                      //               fontWeight: FontWeight.w600,
                      //               fontSize: 18),
                      //         );
                      //       }
                      //     })
                    ],
                  ),
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
                              backgroundColor:
                                  Color.fromARGB(255, 255, 255, 255),
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
                              'ชำระเงิน',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
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
        ],
      ),
    );
  }
}
