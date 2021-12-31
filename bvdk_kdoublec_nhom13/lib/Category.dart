import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return CategoryState();
  }
}

class CategoryState extends State<Category> {
  Widget Cate_Domain = Card(
    color: Color(0xffA6ED4B),
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          alignment: Alignment.center,
          child: Text(
            'Theo Miền',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Divider(
          color: Colors.white,
        ),
        ListTile(
          leading: Icon(Icons.location_city),
          title: Text('Miền bắc'),
        ),
        Divider(
          color: Colors.white,
        ),
        ListTile(
          leading: Icon(Icons.location_city),
          title: Text('Miền trung'),
        ),
        Divider(
          color: Colors.white,
        ),
        ListTile(
          leading: Icon(Icons.location_city),
          title: Text('Miền nam'),
        ),
        Divider(
          color: Colors.white,
        ),
      ],
    ),
  );
  Widget Cate_Like = Card(
    color: Color(0xffA6ED4B),
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          alignment: Alignment.center,
          child: Text(
            'Theo Sở Thích',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Divider(
          color: Colors.white,
        ),
        ListTile(
          leading: Icon(Icons.beach_access),
          title: Text('Cắm trại'),
        ),
        Divider(
          color: Colors.white,
        ),
        ListTile(
          leading: Icon(Icons.beach_access),
          title: Text('Du lịch'),
        ),
        Divider(
          color: Colors.white,
        ),
        ListTile(
          leading: Icon(Icons.beach_access),
          title: Text('Nghĩ dưỡng'),
        ),
        Divider(
          color: Colors.white,
        ),
        ListTile(
          leading: Icon(Icons.beach_access),
          title: Text('Đi phượt'),
        ),
        Divider(
          color: Colors.white,
        ),
        ListTile(
          leading: Icon(Icons.beach_access),
          title: Text('Dã ngoại'),
        ),
        Divider(
          color: Colors.white,
        ),
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffA6ED4B),
        title: Container(
          alignment: Alignment.centerLeft,
          child: Text(
            'NHU CẦU',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: CircleAvatar(
              child: Text('C'),
            ),
          ),
        ],
      ),
      body: Center(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Cate_Domain,
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
              child: Cate_Like,
            ),
          ],
        ),
      ),
    );
  }
}
