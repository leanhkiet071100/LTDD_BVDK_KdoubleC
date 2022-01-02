import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Search.dart';

class Harbourage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HarbourageState();
  }
}

class HarbourageState extends State<Harbourage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffA6ED4B),
        title: Text('Nơi lưu trú ở + (thuộc địa danh)'),
      ),
      body: Center(
        child: ListView(
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'images/khachsan/KS1.jpg',
                      width: 500,
                      height: 225,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'Nơi lưu trú',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              child: Text(
                'DANH SÁCH NƠI LƯU TRÚ',
                style: TextStyle(
                    color: Color(0xffA6ED4B),
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            Container(
              width: 300,
              height: 175,
              padding: EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Image.asset(
                  'images/khachsan/KS3.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, bottom: 5),
              child: Text(
                'Khách sạn King Hotel',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10, bottom: 20),
                    child: Icon(
                      Icons.location_on,
                      color: Colors.blue,
                    ),
                  ),
                  Flexible(
                    child: Container(
                      child: Text(
                        'Số 12, đường N14, xã Trung Hòa, huyện Trảng Bom, tỉnh Đồng Nai.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10, bottom: 10),
                    child: Icon(
                      Icons.phone,
                      color: Colors.red,
                    ),
                  ),
                  Flexible(
                    child: Container(
                      child: Text(
                        '0123654987',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 300,
              height: 175,
              padding: EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Image.asset(
                  'images/khachsan/KS2.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, bottom: 5),
              child: Text(
                'Khách sạn King Hotel',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10, bottom: 20),
                    child: Icon(
                      Icons.location_on,
                      color: Colors.blue,
                    ),
                  ),
                  Flexible(
                    child: Container(
                      child: Text(
                        'Số 12, đường N14, xã Trung Hòa, huyện Trảng Bom, tỉnh Đồng Nai.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10, bottom: 10),
                    child: Icon(
                      Icons.phone,
                      color: Colors.red,
                    ),
                  ),
                  Flexible(
                    child: Container(
                      child: Text(
                        '0123654987',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
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
