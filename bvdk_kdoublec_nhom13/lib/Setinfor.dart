import 'package:flutter/material.dart';
import 'SercuInfo.dart';
import 'SetPerInfor.dart';
import 'SetPass.dart';

class SetInfor extends StatefulWidget {
  const SetInfor({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SetInforState();
  }
}

class SetInforState extends State<SetInfor> {
  Widget TxtSetInfor = Container(
    alignment: Alignment.centerLeft,
    padding: EdgeInsets.all(10),
    color: Colors.black,
    child: Text(
      'Thông tin cá nhân',
      style: TextStyle(
          color: Colors.white, fontStyle: FontStyle.italic, fontSize: 25),
    ),
  );
  Widget TxtSetInfor2 = Container(
    alignment: Alignment.centerLeft,
    padding: EdgeInsets.all(10),
    color: Colors.black,
    child: Text(
      'Quản lý khác',
      style: TextStyle(
          color: Colors.white, fontStyle: FontStyle.italic, fontSize: 25),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffA6ED4B),
        title: Container(
          alignment: Alignment.center,
          child: Text(
            'QUẢN LÝ THÔNG TIN CÁ NHÂN',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            TxtSetInfor,
            Container(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SetPerInfor();
                  }));
                },
                child: Text(
                  'Chỉnh sửa thông tin cá nhân',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SetPass();
                  }));
                },
                child: Text(
                  'Đổi mật khẩu',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            TxtSetInfor2,
            Container(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SercuInfo();
                  }));
                },
                child: Text(
                  'Quyền riêng tư',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Thay đổi tài khoản',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Xóa tài khoản',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            Container(
              padding: EdgeInsets.only(left: 100, right: 100, top: 300),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Đăng xuất',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color(0xffA6ED4B),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
