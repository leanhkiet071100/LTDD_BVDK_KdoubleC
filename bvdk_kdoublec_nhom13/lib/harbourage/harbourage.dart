import 'package:bvdk_kdoublec_nhom13/Layout/layout.dart';
import 'package:bvdk_kdoublec_nhom13/food/food.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Search.dart';

class harbourage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return harbourageState();
  }
}

class harbourageState extends State<harbourage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffA6ED4B),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Search();
              }));
            },
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          CircleAvatar(
            child: Text('C'),
            backgroundColor: Colors.black,
          ),
          Padding(
            padding: EdgeInsets.only(right: 5),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.logout,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            layout(),
            Container(
              padding: EdgeInsets.only(top: 5, bottom: 5),
              alignment: Alignment.center,
              child: Text(
                'Nơi lưu trú',
                style: TextStyle(
                    color: Color(0xffA6ED4B),
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) => Card(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Card(
                    child: Column(
                      children: [
                        ListTile(
                          leading: Image.network('images/bk1.jpg'),
                          subtitle: Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [
                                Text(
                                  'Địa nơi lưu trú',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                ),
                                Text(
                                  'Số điện thoại',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                ),
                              ],
                            ),
                          ),
                          title: Text(
                            'Tên nơi lưu trú',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
