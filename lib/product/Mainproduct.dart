import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:vin/card/card_menu.dart';
import 'package:vin/category/categoryProduct.dart';
import 'package:vin/product/allProduct.dart';

class Mainproduct extends StatefulWidget {
  Mainproduct({
    super.key,
  });

  @override
  State<Mainproduct> createState() => _MainproductState();
}

class _MainproductState extends State<Mainproduct> {
  // ProductResponse? productlist;
  bool isLoad = true;
  bool isLoad2 = true;

  // Future<ProductResponse> product() async {
  //   ProductRequest request = ProductRequest(
  //       search: "", searchCategory: "", category: widget.categoryid);
  //   MainApi api = MainApi();
  //   ProductResponse response =
  //       await api.getProduct(request).catchError((error) {
  //     print(error.toString());
  //   });
  //   setState(() {
  //     productlist = response;
  //     isLoad = false;
  //   });
  //   return response;
  // }

  // ShowReviewResponse? showReview;
  // Future<ShowReviewResponse> getReview() async {
  //   MainApi api = MainApi();
  //   ShowReviewResponse response = await api
  //       .showReview(ShowReviewRequest(productId: widget.productId.toString()))
  //       .catchError((error) {
  //     print(error.toString());
  //   });
  //   setState(() {
  //     showReview = response;
  //     isLoad2 = false;
  //   });
  //   return response;
  // }

  int item = 1;

  // @override
  // void initState() {
  //   super.initState();
  //   product();
  //   getReview();
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            color: Color.fromARGB(255, 11, 63, 1),
            size: 30,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        title: Container(
          height: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromRGBO(239, 239, 239, 0.43),
          ),
          child: TextFormField(
            readOnly: true,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AllProduct()),
              );
            },
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                prefixIcon: Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 11, 63, 1),
                  size: 35,
                ),
                hintText: 'มองหาอาหารประเภทไหนอยู่',
                hintStyle: TextStyle(fontSize: 15)),
          ),
        ),
      ),
      body:
          // !isLoad && !isLoad2
          //     ?
          SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Image.asset(
                  'assets/pngegg.png'
                  // widget.image,
                  ,
                  width: 500,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 20, bottom: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            // widget.name,
                            'Test',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  if (item > 1) {
                                    setState(() {
                                      item = item - 1;
                                    });
                                  }
                                },
                                child: Icon(
                                  Icons.remove_circle,
                                  color: Color.fromARGB(255, 11, 63, 1),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, right: 5),
                                child: Text(item.toString()),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    item = item + 1;
                                  });
                                },
                                child: Icon(
                                  Icons.add_circle,
                                  color: Color.fromARGB(255, 11, 63, 1),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(children: [
                      // if (showReview!.reviewRate != null) ...[
                      //   Container(
                      //       alignment: Alignment.centerLeft,
                      //       child: Icon(
                      //         Icons.star,
                      //         color: double.parse(
                      //                     showReview!.reviewRate!) >=
                      //                 1
                      //             ? Color.fromARGB(255, 11, 63, 1)
                      //             : Colors.grey,
                      //       )),
                      //   Container(
                      //       alignment: Alignment.centerLeft,
                      //       child: Icon(
                      //         Icons.star,
                      //         color: double.parse(
                      //                     showReview!.reviewRate!) >=
                      //                 2
                      //             ? Color.fromARGB(255, 11, 63, 1)
                      //             : Colors.grey,
                      //       )),
                      //   Container(
                      //       alignment: Alignment.centerLeft,
                      //       child: Icon(
                      //         Icons.star,
                      //         color: double.parse(
                      //                     showReview!.reviewRate!) >=
                      //                 3
                      //             ? Color.fromARGB(255, 11, 63, 1)
                      //             : Colors.grey,
                      //       )),
                      //   Container(
                      //       alignment: Alignment.centerLeft,
                      //       child: Icon(
                      //         Icons.star,
                      //         color: double.parse(
                      //                     showReview!.reviewRate!) >=
                      //                 4
                      //             ? Color.fromARGB(255, 11, 63, 1)
                      //             : Colors.grey,
                      //       )),
                      //   Container(
                      //       alignment: Alignment.centerLeft,
                      //       child: Icon(
                      //         Icons.star,
                      //         color: double.parse(
                      //                     showReview!.reviewRate!) >=
                      //                 5
                      //             ? Color.fromARGB(255, 11, 63, 1)
                      //             : Colors.grey,
                      //       )),
                      // ] else ...
                      // [
                      Container(
                          alignment: Alignment.centerLeft,
                          child: Icon(
                            Icons.star,
                            color: Colors.grey,
                          )),
                      Container(
                          alignment: Alignment.centerLeft,
                          child: Icon(
                            Icons.star,
                            color: Colors.grey,
                          )),
                      Container(
                          alignment: Alignment.centerLeft,
                          child: Icon(
                            Icons.star,
                            color: Colors.grey,
                          )),
                      Container(
                          alignment: Alignment.centerLeft,
                          child: Icon(
                            Icons.star,
                            color: Colors.grey,
                          )),
                      Container(
                          alignment: Alignment.centerLeft,
                          child: Icon(
                            Icons.star,
                            color: Colors.grey,
                          )),
                    ]
                        // ],
                        ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0, bottom: 5),
                      child: Container(
                          alignment: Alignment.topLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                // double.parse(widget.price)
                                //         .toStringAsFixed(0)
                                '300' + " ฿",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 11, 63, 1),
                                    fontWeight: FontWeight.w700),
                              ),
                              Row(
                                children: [
                                  // Container(
                                  //   width: 50,
                                  //   height: 40,
                                  //   child: FloatingActionButton(
                                  //     backgroundColor: Colors.white,
                                  //     shape: CircleBorder(
                                  //       side: BorderSide(
                                  //         color:Color.fromARGB(255, 11, 63, 1),
                                  //         width: 1.0,
                                  //       ),
                                  //     ),
                                  //     onPressed: () {
                                  //       MaterialPageRoute route =
                                  //           MaterialPageRoute(
                                  //         builder: (context) => MyCart(),
                                  //       );
                                  //       Navigator.push(context, route);
                                  //     },
                                  //     child: Icon(
                                  //       Icons.shopping_cart,
                                  //       color:Color.fromARGB(255, 11, 63, 1),
                                  //     ),
                                  //   ),
                                  // ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                    ),
                                    child: Container(
                                      // width: 130,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          backgroundColor:
                                              Color.fromARGB(255, 11, 63, 1),
                                        ),
                                        onPressed: () {
                                          // EasyLoading.show();
                                          // AddCartRequest addCartRequest =
                                          //     AddCartRequest();
                                          // addCartRequest.productId =
                                          //     widget.productId;
                                          // addCartRequest.amount = item;
                                          // MainApi mainApi = MainApi();
                                          // mainApi
                                          //     .addCart(addCartRequest)
                                          //     .then((value) {
                                          //   EasyLoading.showSuccess(
                                          //       'เพิ่มสินค้าสำเร็จ');

                                          //   // showDialog<String>(
                                          //   //   context: context,
                                          //   //   builder: (BuildContext context) =>
                                          //   //       AlertDialog(
                                          //   //     title: const Text('สำเร็จ'),
                                          //   //     content: Text('เพิ่มสินค้าแล้ว'),
                                          //   //     actions: <Widget>[
                                          //   //       TextButton(
                                          //   //         onPressed: () =>
                                          //   //             Navigator.pop(context),
                                          //   //         child: const Text('ตกลง'),
                                          //   //       ),
                                          //   //     ],
                                          //   //   ),
                                          //   // );
                                          // }).catchError((error) {
                                          //   EasyLoading.showError(
                                          //       error.toString());
                                          //   // print();
                                          // });
                                        },
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.add,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              'เพิ่มสินค้า',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )),
                    ),
                    Align(alignment: Alignment.centerLeft, child: Text('Test')
                        // (widget.productdetail)
                        ),
                    Divider(
                      thickness: 2,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('สินค้าในหมวดเดียวกัน',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 11, 63, 1),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18)),
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CategoryProduct(
                                          // cateName: widget.name,
                                          // categoryid:
                                          //     widget.categoryid
                                          )),
                                );
                              },
                              child: Icon(Icons.arrow_forward_ios))
                        ]),
                    Container(
                        width: double.infinity,
                        height: 160,
                        child:
                            // productlist != null
                            //     ?
                            ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount:
                              // productlist!.data!.product!.length,
                              9,
                          itemBuilder: (context, index) {
                            return CardMenuHomePage(
                                // productId: productlist!
                                //     .data!.productRecommend![index].id!,
                                // name: productlist!
                                //     .data!
                                //     .productRecommend![index]
                                //     .productName!,
                                // price: productlist!.data!
                                //     .productRecommend![index].price!,
                                // image: "https://fortyfourfood.com" +
                                //     productlist!.data!
                                //         .productRecommend![index].path!,
                                // productdetail: productlist!.data!
                                //     .product![index].productDetail!
                                //     .toString(),
                                // categoryid: productlist!
                                //     .data!.product![index].cateId!,
                                );
                          },
                        )
                        // : Container(
                        //     child: Center(
                        //         child: CircularProgressIndicator()),
                        //   ),
                        ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'การรีวิว',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 11, 63, 1),
                                fontWeight: FontWeight.w700),
                          )),
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    // showReview!.review != null
                    //     ?
                    Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 5,
                          // showReview!.review!.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Container(
                                          alignment: Alignment.centerLeft,
                                          child: Icon(
                                            Icons.account_circle_rounded,
                                            color:
                                                Color.fromRGBO(88, 95, 101, 1),
                                            size: 30,
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, top: 7),
                                      child: Text('Test'
                                          // showReview!
                                          //   .review![index].name!
                                          ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Row(
                                    children: [
                                      Container(
                                          alignment: Alignment.centerLeft,
                                          child: Icon(
                                            Icons.star,
                                            color:
                                                //  showReview!
                                                //             .review![
                                                //                 index]
                                                //             .score! >=
                                                //         1
                                                //     ? Color.fromRGBO(
                                                //         13, 81, 148, 1)
                                                //     :
                                                Colors.grey,
                                          )),
                                      Container(
                                          alignment: Alignment.centerLeft,
                                          child: Icon(
                                            Icons.star,
                                            color:
                                                // showReview!
                                                //             .review![
                                                //                 index]
                                                //             .score! >=
                                                //         2
                                                //     ? Color.fromRGBO(
                                                //         13, 81, 148, 1)
                                                //     :
                                                Colors.grey,
                                          )),
                                      Container(
                                          alignment: Alignment.centerLeft,
                                          child: Icon(
                                            Icons.star,
                                            color:
                                                //  showReview!
                                                //             .review![
                                                //                 index]
                                                //             .score! >=
                                                //         3
                                                //     ? Color.fromRGBO(
                                                //         13, 81, 148, 1)
                                                //     :
                                                Colors.grey,
                                          )),
                                      Container(
                                          alignment: Alignment.centerLeft,
                                          child: Icon(
                                            Icons.star,
                                            color:
                                                // showReview!
                                                //             .review![
                                                //                 index]
                                                //             .score! >=
                                                //         4
                                                //     ? Color.fromRGBO(
                                                //         13, 81, 148, 1)
                                                //     :
                                                Colors.grey,
                                          )),
                                      Container(
                                          alignment: Alignment.centerLeft,
                                          child: Icon(
                                            Icons.star,
                                            color:
                                                //  showReview!
                                                //             .review![
                                                //                 index]
                                                //             .score! >=
                                                //         5
                                                //     ? Color.fromRGBO(
                                                //         13, 81, 148, 1)
                                                //     :
                                                Colors.grey,
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: Text(
                                            // showReview!
                                            //       .review![index]
                                            //       .score!
                                            //       .toString() +
                                            '5 / 5'),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 5),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text('สินค้าสดสะอาด')),
                                ),
                                // Container(
                                //   alignment: Alignment.topLeft,
                                //   height:
                                //       MediaQuery.of(context).size.height *
                                //           15 /
                                //           100,
                                //   child: Image.network(
                                //       'https://mpics.mgronline.com/pics/Images/554000006869601.JPEG'),
                                // ),
                              ],
                            );
                          }),
                    )
                    // : Container(),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
      // : Container(
      //     child: Center(child: CircularProgressIndicator()),
      //   ),
      ,
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(
          side: BorderSide(
            color: Color.fromARGB(255, 11, 63, 1),
            width: 1.0,
          ),
        ),
        backgroundColor: Colors.white,
        onPressed: () {
          // MaterialPageRoute route = MaterialPageRoute(
          //   builder: (context) => MyCart(),
          // );
          // Navigator.push(context, route);
        },
        child: Icon(
          Icons.shopping_cart,
          color: Color.fromARGB(255, 11, 63, 1),
        ),
      ),
      // Stack(
      //   children: [
      //     FloatingActionButton(
      //       shape: CircleBorder(
      //         side: BorderSide(
      //           color:Color.fromARGB(255, 11, 63, 1),
      //           width: 1.0,
      //         ),
      //       ),
      //       backgroundColor: Colors.white,
      //       onPressed: () {
      //         MaterialPageRoute route = MaterialPageRoute(
      //           builder: (context) => MyCart(),
      //         );
      //         Navigator.push(context, route);
      //       },
      //       child: Icon(
      //         Icons.shopping_cart,
      //         color:Color.fromARGB(255, 11, 63, 1),
      //       ),
      //     ),
      //     Positioned(
      //       top: 0,
      //       right: 0,
      //       child: Container(
      //         height: 25,
      //         width: 25,
      //         child: CircleAvatar(
      //           backgroundColor: Colors.red,
      //           child: Text(
      //             '0',
      //             style: TextStyle(color: Colors.white),
      //           ),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
