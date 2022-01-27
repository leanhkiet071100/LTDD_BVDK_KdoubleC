import 'package:bvdk_kdoublec_nhom13/Login.dart';
import 'package:flutter/material.dart';
import 'Search.dart';
import 'Sites.dart';
import 'Setinfor.dart';

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
            'images/bk1.jpg',
            width: 500,
            height: 225,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.only(top: 65),
            child: CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('images/bk1.jpg'),
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
      'Nguyễn Văn A',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
    ),
  );
  Widget BtnPost = Container(
    padding: EdgeInsets.only(top: 20, left: 20, right: 20),
    alignment: Alignment.center,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 175,
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
          width: 175,
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Bài viết đã lưu',
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
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Login();
                }));
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
            Container(
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
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
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
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
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
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return SetInfor();
                          }));
                        },
                        child: Text(
                          'Quản lý thông tin cá nhân',
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30))),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BtnPost,
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 10, right: 10, top: 20),
              child: Card(
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Text('Q'),
                      ),
                      title: Text(
                        'Nguyễn Thanh Quí',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      trailing: PopupMenuButton(
                        icon: Icon(Icons.more_horiz),
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            child: ListTile(
                              leading: Icon(Icons.flag_outlined),
                              title: Text('Lưu Bài Viết'),
                              subtitle: Text('Lưu bài viết vào danh sách'),
                            ),
                          ),
                          PopupMenuItem(
                            child: ListTile(
                              leading: Icon(Icons.star_border_outlined),
                              title: Text('Ẩn bài viết'),
                              subtitle: Text('Ẩn đến khi nào được bạn mở lại'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(10),
                      child: Text('Nơi đây thật tuyệt vời'),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 5),
                            child: TextButton(
                              onPressed: () {
                                /*Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return Sites(
                                    lsSit:,
                                  );
                                }));*/
                              },
                              child: Text(
                                'Điểm đến: Tây Sơn - Bình Định',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic),
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: Image.asset(
                              'images/bk3.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5, left: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.comment,
                              color: Colors.blue,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.share,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(top: 5, left: 20, bottom: 10),
                      child: Text('Lưu Thành Công và 69 người đã thích.'),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(top: 5, left: 20, bottom: 10),
                      child: Text(
                        'Bình luận: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(top: 2, left: 40, bottom: 10),
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Lưu Thành Công:',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text('Nơi này đẹp quá.')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
