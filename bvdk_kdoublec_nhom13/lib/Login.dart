import 'package:flutter/material.dart';
import 'Register.dart';
import 'Screen_main.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
      body: Column(
        children: [
          LoginLoad_black,
          LoginLoad_Green,
          LoginLoad_AcountName,
          LoginLoad_AcountPass,
          Container(
            child: Column(
              children: [
                Container(
                  height: 60,
                  width: 250,
                  padding: EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ScreenMain();
                      }));
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
            height: 60,
            width: 250,
            padding: EdgeInsets.only(top: 20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Register();
                }));
              },
              child: Text(
                'Đăng ký',
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60))),
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
