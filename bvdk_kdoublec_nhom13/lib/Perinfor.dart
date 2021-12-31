import 'package:flutter/material.dart';
import 'Search.dart';

class PerInfor extends StatefulWidget {
  const PerInfor({Key? key}) : super(key: key);

  @override
  State<PerInfor> createState() => PerInforState();
}

class PerInforState extends State<PerInfor> {
  Widget imgScr = Container(
    child: ClipRRect(
      borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(50), bottomLeft: Radius.circular(50)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'images/bk5.jpg',
            width: 500,
            height: 225,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.only(top: 65),
            child: CircleAvatar(
              radius: 80,
              backgroundImage:
                  NetworkImage("https://s3.o7planning.com/images/boy-128.png"),
              backgroundColor: Colors.black,
            ),
          ),
        ],
      ),
    ),
  );
  Widget AccountName = Container(
    padding: EdgeInsets.only(top: 20),
    alignment: Alignment.center,
    child: Text(
      'Nguyễn Thanh Quí',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
    ),
  );
  Widget AccountInfor = Container(
    padding: EdgeInsets.only(top: 20, left: 10, right: 10),
    child: Card(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 10, left: 10),
            child: Row(
              children: [
                Text(
                  'Email: ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  '0306191010@caothang.edu.vn',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 20, left: 10, bottom: 10),
            child: Row(
              children: [
                Text(
                  'Số điện thoại: ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  '0969167970',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Quản lý thông tin cá nhân',
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey[350]),
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
  Widget BtnPost = Container(
    padding: EdgeInsets.only(top: 20, left: 20, right: 20),
    alignment: Alignment.center,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 220,
          height: 50,
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Bài viết cá nhân',
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
        Container(
          width: 220,
          height: 50,
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Bài viết cá nhân',
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
  );

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
      body: Center(
        child: ListView(
          children: <Widget>[
            imgScr,
            AccountName,
            AccountInfor,
            BtnPost,
          ],
        ),
      ),
    );
  }
}
