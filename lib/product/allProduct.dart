import 'package:flutter/material.dart';
import 'package:vin/card/card_menu.dart';

class AllProduct extends StatefulWidget {
  const AllProduct({super.key});

  @override
  State<AllProduct> createState() => _AllProductState();
}

class _AllProductState extends State<AllProduct> {
  // ProductResponse? productlist;

  // Future<ProductResponse> product({String? searchName}) async {
  //   ProductRequest request =
  //       ProductRequest(search: searchName ?? "", searchCategory: "");
  //   MainApi api = MainApi();
  //   ProductResponse response =
  //       await api.getProduct(request).catchError((error) {
  //     print(error.toString());
  //   });
  //   print(response!.data!.product!.length);
  //   setState(() {
  //     productlist = response;
  //   });
  //   return response;
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   product();
  // }

  @override
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
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        title: Column(
          children: [
            Row(
              children: [
                Text(
                  'สินค้าทั้งหมด',
                  style: TextStyle(
                      color: Color.fromARGB(255, 11, 63, 1),
                      fontWeight: FontWeight.w600),
                )
                // Container(
                //   height: 40,
                //   width: 40,
                //   decoration: BoxDecoration(
                //       image: DecorationImage(
                //           image: AssetImage('images/icon/map.png'), scale: 3.5),
                //       color: Color.fromRGBO(13, 81, 148, 0.15),
                //       shape: BoxShape.circle,
                //       border: Border.all(color: Colors.white, width: 3)),
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 15, top: 5),
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Text(
                //         'ที่อยู่จัดส่ง',
                //         style: TextStyle(color: Colors.black, fontSize: 15),
                //       ),
                //       Text(
                //         '11/66 ถนน ประชาราษฏร์ แขวง บางซื่อ เขต บางซื่อ',
                //         style: TextStyle(fontSize: 12, color: Colors.grey),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(239, 239, 239, 0.43),
                    ),
                    child: TextField(
                      // onSubmitted: (value) {
                      //   setState(() {
                      //     product(searchName: value);
                      //   });
                      // },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color.fromARGB(255, 11, 63, 1),
                        ),
                        hintText: 'มองหาอาหารประเภทไหนอยู่',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 15, bottom: 10),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "สินค้าทั้งหมด",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 11, 63, 1)),
                      )),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 75 / 100,
                  child: Container(
                      height: MediaQuery.of(context).size.height * 44 / 100,
                      child:
                          // productlist != null
                          //     ?
                          GridView.builder(
                              physics: BouncingScrollPhysics(),
                              itemCount: 5
                              // productlist!.data!.product!.length,
                              ,
                              itemBuilder: (context, index) {
                                return CardMenuHomePage(
                                    // productId:
                                    //     productlist!.data!.product![index].id!,
                                    // name: productlist!
                                    //     .data!.product![index].productName!,
                                    // price:
                                    //     productlist!.data!.product![index].price!,
                                    // image: "https://fortyfourfood.com" +
                                    //     productlist!.data!.product![index].path!,
                                    // productdetail: productlist!
                                    //     .data!.product![index].productDetail!
                                    //     .toString(),
                                    // categoryid:
                                    //     productlist!.data!.product![index].cateId!,
                                    );
                              },
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisSpacing: 5,
                                      crossAxisSpacing: 1,
                                      crossAxisCount:
                                          // SizerUtil.deviceType ==
                                          //         DeviceType.mobile
                                          3))
                      // : Container(
                      //     child: Center(child: CircularProgressIndicator()),
                      //   ),
                      ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
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
    );
  }
}
