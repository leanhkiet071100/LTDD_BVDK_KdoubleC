import 'package:flutter/material.dart';

class SetPass extends StatefulWidget {
  const SetPass({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SetPassState();
  }
}

class SetPassState extends State<SetPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffA6ED4B),
        title: Container(
          alignment: Alignment.center,
          child: Text(
            'CHỈNH SỬA MẬT KHẨU',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Mật khẩu cũ',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password_outlined),
                        border: UnderlineInputBorder(),
                        hintText: 'Nhập mật khẩu cũ',
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
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Mật khẩu mới',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password_rounded),
                        border: UnderlineInputBorder(),
                        hintText: 'Nhập mật khẩu mới',
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
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Nhập lại',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password_rounded),
                        border: UnderlineInputBorder(),
                        hintText: 'Nhập lại mật khẩu mới',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, left: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: 200,
                    padding: EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Lưu mật khẩu',
                        style: TextStyle(fontSize: 25, color: Colors.black),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xffA6ED4B)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(60))),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 200,
                    padding: EdgeInsets.only(top: 20, right: 40),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Hủy bỏ',
                        style: TextStyle(fontSize: 25, color: Colors.black),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(60))),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
