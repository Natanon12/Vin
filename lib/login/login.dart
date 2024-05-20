import 'package:flutter/material.dart';
import 'package:vin/homapage/mainhomepage.dart';
import 'package:vin/navbar.dart/navbar.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool _checkBoxVal = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/banner.jfif'),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "เข้าสู่ระบบ",
                      style: TextStyle(
                          color: Color.fromARGB(255, 11, 63, 1),
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      // validator: (value) {
                      //   if (value == null || value == '') {
                      //     return 'กรุณาระบุเบอร์โทร';
                      //   }
                      //   return null;
                      // },
                      onSaved: (newValue) {
                        // _loginRequest.phone = newValue;
                      },
                      textCapitalization: TextCapitalization.words,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              borderSide: BorderSide(
                                  width: 0, style: BorderStyle.none)),
                          labelText: 'ชื่อผู้ใช้',
                          labelStyle: TextStyle(
                              color: Color.fromRGBO(175, 175, 175, 1),
                              fontFamily: 'Poppins',
                              fontSize: 14),
                          contentPadding: EdgeInsets.all(15),
                          filled: true,
                          fillColor: Color.fromRGBO(239, 239, 239, 1)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: TextFormField(
                      obscureText: true,
                      // validator: (value) {
                      //   if (value == null || value == '') {
                      //     return 'กรุณาระบุรหัสผ่าน';
                      //   }
                      //   return null;
                      // },
                      onSaved: (newValue) {
                        // _loginRequest.password = newValue;
                      },
                      textCapitalization: TextCapitalization.words,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              borderSide: BorderSide(
                                  width: 0, style: BorderStyle.none)),
                          labelText: 'รหัสผ่าน',
                          labelStyle: TextStyle(
                              color: Color.fromRGBO(175, 175, 175, 1),
                              fontFamily: 'Poppins',
                              fontSize: 14),
                          contentPadding: EdgeInsets.all(15),
                          filled: true,
                          fillColor: Color.fromRGBO(239, 239, 239, 1)),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Row(
                        children: [
                          Checkbox(
                            value: _checkBoxVal,
                            activeColor: Color.fromARGB(255, 11, 63, 1),
                            onChanged: (bool? newValue) {
                              setState(() {
                                _checkBoxVal = newValue!;
                              });
                            },
                          ),
                          Text(
                            "ยืนยันตัวตนของคุณ",
                            style:
                                TextStyle(color: Color.fromRGBO(30, 30, 30, 1)),
                          ),
                        ],
                      )),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Stack(
                        children: <Widget>[
                          Positioned.fill(
                            child: Container(
                              width: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color.fromARGB(255, 11, 63, 1),
                              ),
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              minimumSize: Size(double.infinity, 40),
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.all(12.0),
                              textStyle: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            onPressed: () {
                              // if (_key.currentState!.validate()) {
                              //   _key.currentState!.save();
                              //   EasyLoading.show(status: 'กำลังเข้าสู่ระบบ');
                              //   MainApi mainApi = MainApi();
                              //   mainApi
                              //       .getLoginUser(_loginRequest)
                              //       .then((value) async {
                              //     EasyLoading.dismiss();
                              //     AndroidOptions _secureOption() =>
                              //         AndroidOptions(
                              //           encryptedSharedPreferences: true,
                              //         );
                              //     final FlutterSecureStorage storage =
                              //         await FlutterSecureStorage();
                              //     await storage.write(
                              //         key: 'user',
                              //         value: loginResponeToJson(value),
                              //         aOptions: _secureOption());
                              //     MaterialPageRoute route = MaterialPageRoute(
                              //       builder: (context) => MainNavigationBar(),
                              //     );
                              //     Navigator.pushAndRemoveUntil(
                              //         context, route, (route) => false);
                              //   }).catchError((error) {
                              //     EasyLoading.dismiss();
                              //     showDialog<String>(
                              //       context: context,
                              //       builder: (BuildContext context) =>
                              //           AlertDialog(
                              //         title: const Text('ผิดพลาด'),
                              //         content: Text(error.toString()),
                              //         actions: <Widget>[
                              //           TextButton(
                              //             onPressed: () => Navigator.pop(context),
                              //             child: const Text('ตกลง'),
                              //           ),
                              //         ],
                              //       ),
                              //     );
                              //   });
                              // }
                              MaterialPageRoute route = MaterialPageRoute(
                                builder: (context) => MainNavigationBar(),
                              );
                              Navigator.push(context, route);
                            },
                            child: Text('เข้าสู่ระบบ'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'หรือ',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'เข้าสู่ระบบผ่าน :',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        // Padding(
                        //   padding: EdgeInsets.symmetric(horizontal: 10),
                        //   child: InkWell(
                        //     onTap: () => loginWithFacebook(),
                        //     child: Container(
                        //       decoration: BoxDecoration(),
                        //       child: ClipRRect(
                        //         // borderRadius: BorderRadius.circular(10.0),
                        //         child: Image.asset(
                        //             'images/icon/icons-facebook.png',
                        //             width: 50.0,
                        //             height: 50.0),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: InkWell(
                            // onTap: () => singinWithGoogle(),
                            child: Container(
                              decoration: BoxDecoration(),
                              child: ClipRRect(
                                // borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                    'assets/icons-google-plus.png',
                                    width: 50.0,
                                    height: 50.0),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: InkWell(
                            // onTap: () => startLineLogin(),
                            child: Container(
                              decoration: BoxDecoration(),
                              child: ClipRRect(
                                // borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset('assets/icons-line.png',
                                    width: 50.0, height: 50.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // SocialLoginButton(
                  //   buttonType: SocialLoginButtonType.apple,
                  //   onPressed: () => loginWithAppleID(),
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
