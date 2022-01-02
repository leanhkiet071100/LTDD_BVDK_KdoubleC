import 'package:flutter/material.dart';

class SercuInfo extends StatefulWidget {
  const SercuInfo({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SercuInfoState();
  }
}

class SercuInfoState extends State<SercuInfo> {
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
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Tên người dùng',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Checkbox(
                            value: true,
                            onChanged: (bool) {},
                          ),
                          Text('Ẩn'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Số điện thoại',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Checkbox(
                            value: true,
                            onChanged: (bool) {},
                          ),
                          Text('Ẩn'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Email',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Checkbox(
                            value: true,
                            onChanged: (bool) {},
                          ),
                          Text('Ẩn'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
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
                        'Lưu thay đổi',
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
