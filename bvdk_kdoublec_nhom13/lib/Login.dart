// ignore: file_names
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Register.dart';
import 'Screen_main.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();

  Future<void> login() async {
    if (user.text.isNotEmpty && pass.text.isNotEmpty) {
      var url = "http://192.168.1.12/flutter/login.php";
      var response = await http.post(Uri.parse(url),
          body: ({
            "username": user.text,
            "password": pass.text,
          }));
      var data = json.decode(response.body);
      if (data == "Success") {
        Fluttertoast.showToast(
            msg: "Đăng nhập thành công",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.green,
            textColor: Colors.white,
            fontSize: 16.0);
        SharedPreferences pres = await SharedPreferences.getInstance();
        pres.setString("username", user.text);
        pres.setString("password", pass.text);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ScreenMain()));
      }
      if (data == "Error") {
        Fluttertoast.showToast(
            msg: "Tài khoản hoặc mật khẩu không đúng",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Vui lòng nhập thông tin"),
      ));
    }
  }

  Widget LoginLoad_black = Container(
    width: 500,
    height: 225,
    decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40))),
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: CircleAvatar(
            backgroundColor: Color(0xffA6ED4B),
            radius: 60,
            child: Text(
              'BK',
              style: TextStyle(fontSize: 50, color: Colors.black),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            'BVDK',
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xffA6ED4B)),
          ),
        ),
      ],
    ),
  );
  Widget LoginLoad_AcountName = Container(
    child: Column(
      children: [
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
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              prefixIcon: Icon(Icons.account_balance),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              hintText: 'Tài Khoản',
            ),
          ),
        ),
      ],
    ),
  );
  Widget LoginLoad_AcountPass = Container(
    child: Column(
      children: [
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
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              prefixIcon: Icon(Icons.password),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              hintText: 'Password',
            ),
          ),
        ),
      ],
    ),
  );
  Widget LoginLoad_Green = Container(
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            'KDoubleC',
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffA6ED4B),
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          LoginLoad_black,
          LoginLoad_Green,
          Container(
            child: Column(
              children: [
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
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      hintText: 'Tài Khoản',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
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
                    controller: pass,
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      hintText: 'Password',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  height: 60,
                  width: 250,
                  padding: EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      login();
                    },
                    child: Text(
                      'Đăng nhập',
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
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Register();
                }));
              },
              child: Text(
                'Đăng ký',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Quên mật khẩu?',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
