import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  Widget CreateAccountState_CreateAccount = Container(
    padding: EdgeInsets.only(top: 10),
    child: Text(
      'Đăng Ký',
      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
    ),
  );
  Widget CreateAccountState_FullInfo = Container(
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
            obscureText: true,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              prefixIcon: Icon(Icons.person),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
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
            obscureText: true,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              prefixIcon: Icon(Icons.email),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
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
            obscureText: true,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              prefixIcon: Icon(Icons.aod),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
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
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              prefixIcon: Icon(Icons.account_balance),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
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
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              prefixIcon: Icon(Icons.password),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              labelText: 'Password',
            ),
          ),
        ),
      ],
    ),
  );
  Widget CreateAccountState_ButtonCreate = Container(
    padding: EdgeInsets.only(top: 20),
    width: 250,
    height: 60,
    child: ElevatedButton(
      onPressed: () {},
      child: Text(
        'Đăng ký',
        style: TextStyle(fontSize: 25, color: Colors.white),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.black),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(60))),
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffA6ED4B),
      body: Column(
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
                CreateAccountState_FullInfo,
                Padding(padding: EdgeInsets.only(top: 50)),
                CreateAccountState_ButtonCreate,
              ],
            ),
          )
        ],
      ),
    );
  }
}
