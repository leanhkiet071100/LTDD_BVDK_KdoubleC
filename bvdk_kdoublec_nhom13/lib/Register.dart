import 'dart:convert';

import 'package:bvdk_kdoublec_nhom13/Login.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController user = TextEditingController();

  Future<void> _Register() async {
    if (name.text.isEmpty ||
        email.text.isEmpty ||
        phone.text.isEmpty ||
        pass.text.isEmpty ||
        user.text.isEmpty) {
      Fluttertoast.showToast(
          msg: "Vui lòng nhập đầy đủ thông tin",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    } else {
      var url = "http://192.168.1.12/DB_QLDL/Register.php";
      var response = await http.post(Uri.parse(url), body: {
        "Hoten_Nguoidung": name.text,
        "Email": email.text,
        "Sodienthoai": phone.text,
        "Taikhoan": user.text,
        "Matkhau": pass.text,
      });
      var data = json.decode(response.body);
      if (data == "Error") {
        Fluttertoast.showToast(
          msg: "Tài khoản đã tồn tại",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16,
        );
      } else {
        Fluttertoast.showToast(
          msg: "Đăng ký thành công",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16,
        );
      }
    }
  }

  Widget CreateAccountState_CreateAccount = Container(
    padding: EdgeInsets.only(top: 10),
    child: Text(
      'Đăng Ký',
      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffA6ED4B),
      body: ListView(
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(top: 10),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios),
                  ),
                ),
                CreateAccountState_CreateAccount,
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          'Họ và tên',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 50, right: 50),
                        child: TextField(
                          controller: name,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            labelText: 'Họ và tên',
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'Email',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 50, right: 50),
                        child: TextField(
                          controller: email,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            labelText: 'Email',
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'Số điện thoại',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 50, right: 50),
                        child: TextField(
                          controller: phone,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: Icon(Icons.aod),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            labelText: 'Số điện thoại',
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          'Tài Khoản',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 50, right: 50),
                        child: TextField(
                          controller: user,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: Icon(Icons.account_balance),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            labelText: 'Tài Khoản',
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          'Mật Khẩu',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 50, right: 50),
                        child: TextField(
                          obscureText: true,
                          controller: pass,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: Icon(Icons.password),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            labelText: 'Password',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 50)),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  width: 250,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      _Register();
                    },
                    child: Text(
                      'Đăng ký',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60))),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
