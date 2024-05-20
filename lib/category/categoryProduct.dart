import 'package:flutter/material.dart';
import 'package:vin/card/card_menu.dart';

class CategoryProduct extends StatefulWidget {
  CategoryProduct({
    super.key,
  });

  @override
  State<CategoryProduct> createState() => _CategoryProductState();
}

class _CategoryProductState extends State<CategoryProduct> {
  // ProductResponse? productlist;

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
  //   });
  //   return response;
  // }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   product();
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
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        toolbarHeight: 50,
        title: Column(
          children: [
            Row(
              children: [
                Text(
                  'หมวดหมู่สินค้า',
                  style: TextStyle(
                      color: Color.fromARGB(255, 11, 63, 1),
                      fontWeight: FontWeight.w600),
                )
                // Container(
                //   height: 50,
                //   width: 50,
                //   decoration: BoxDecoration(
                //       image: DecorationImage(
                //           image: AssetImage('images/icon/map.png'), scale: 3),
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
        padding: const EdgeInsets.only(top: 0, bottom: 10, left: 20, right: 20),
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
                        // widget.cateName,
                        'แอปเปิ้ล',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 11, 63, 1),
                        ),
                      )),
                ),
                Container(
                    height: MediaQuery.of(context).size.height * 75 / 100,
                    child:
                        //  productlist != null
                        //     ?
                        GridView.builder(
                            physics: BouncingScrollPhysics(),
                            itemCount:
                                //productlist!.data!.product!.length < 9
                                //     ? productlist!.data!.product!.length
                                // :
                                9,
                            itemBuilder: (context, index) {
                              return CardMenuHomePage(
                                  // productId: productlist!.data!.product![index].id!,
                                  // name: productlist!
                                  //     .data!.product![index].productName!,
                                  // price: productlist!.data!.product![index].price!,
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
                                    crossAxisCount: 3))
                    // : Container(
                    //     child: Center(child: CircularProgressIndicator()),
                    //   ),
                    ),
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
