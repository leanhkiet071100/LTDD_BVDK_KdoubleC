import 'package:flutter/material.dart';
import 'Search.dart';
import 'Sites.dart';

class Hightlight extends StatefulWidget {
  const Hightlight({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HightlightState();
  }
}

class HightlightState extends State<Hightlight> {
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
          Container(
            padding: EdgeInsets.only(bottom: 50),
            child: Text('Cùng khám phá Việt Nam nào !!',
                style: TextStyle(color: Colors.white, fontSize: 16)),
          ),
          Container(
            height: 60,
            width: 150,
            padding: EdgeInsets.only(top: 20),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Khám phá',
                style: TextStyle(fontSize: 20, color: Colors.white),
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
  );
  Widget Hightlight_month = Container(
    padding: EdgeInsets.all(10),
    child: Stack(
      children: [
        Container(
          width: 400,
          height: 175,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            child: Image.asset(
              'images/bk3.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 10, top: 5),
          alignment: Alignment.topLeft,
          child: Column(
            children: [
              TextButton(
                child: Text(
                  'Tam Bình - Vĩnh Long',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
              ),
              Text(
                'Điểm đến hot nhất tháng',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ],
          ),
        ),
      ],
    ),
  );
  Widget Hightlight_month1 = Container(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          children: [
            Container(
              width: 180,
              height: 175,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                child: Image.asset(
                  'images/bk2.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, top: 5),
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  TextButton(
                    child: Text(
                      'Tam Bình - Vĩnh Long',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {},
                  ),
                  Text(
                    'Điểm đến hot nhất tháng',
                    style: TextStyle(color: Colors.black, fontSize: 13),
                  ),
                ],
              ),
            ),
          ],
        ),
        Stack(
          children: [
            Container(
              width: 180,
              height: 175,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                child: Image.asset(
                  'images/bk2.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, top: 5),
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  TextButton(
                    child: Text(
                      'Tam Bình - Vĩnh Long',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {},
                  ),
                  Text(
                    'Điểm đến hot nhất tháng',
                    style: TextStyle(color: Colors.black, fontSize: 13),
                  ),
                ],
              ),
            ),
          ],
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
      body: ListView(
        children: <Widget>[
          imgScr,
          Container(
            padding: EdgeInsets.only(top: 10),
            alignment: Alignment.center,
            child: Text(
              'NỔI BẬT TRONG THÁNG',
              style: TextStyle(
                  color: Color(0xffA6ED4B),
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          Hightlight_month,
          Hightlight_month1,
          Hightlight_month1,
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            alignment: Alignment.center,
            child: Text(
              'NỔI BẬT VÙNG MIỀN',
              style: TextStyle(
                  color: Color(0xffA6ED4B),
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 5, left: 10, bottom: 5),
            alignment: Alignment.centerLeft,
            child: Text(
              'Miền Nam',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Stack(
              children: [
                Container(
                  width: 400,
                  height: 175,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    child: Image.asset(
                      'images/bk2.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, top: 5),
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      TextButton(
                        child: Text(
                          'Tam Bình - Vĩnh Long',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {},
                      ),
                      Text(
                        'Điểm đến hot nhất miền Nam',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 5, left: 10, bottom: 5),
            alignment: Alignment.centerLeft,
            child: Text(
              'Miền Trung',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Stack(
              children: [
                Container(
                  width: 400,
                  height: 175,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    child: Image.asset(
                      'images/bk3.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, top: 5),
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      TextButton(
                        child: Text(
                          'Tây Sơn - Bình Định',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {},
                      ),
                      Text(
                        'Điểm đến hot nhất miền Trung',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 5, left: 10, bottom: 5),
            alignment: Alignment.centerLeft,
            child: Text(
              'Miền Bắc',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Stack(
              children: [
                Container(
                  width: 400,
                  height: 175,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    child: Image.asset(
                      'images/bk6.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, top: 5),
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      TextButton(
                        child: Text(
                          'Sa Pa - Lào Cai',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {},
                      ),
                      Text(
                        'Điểm đến hot nhất miền Bắc',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            alignment: Alignment.center,
            child: Text(
              'BÀI VIẾT NỔI BẬT',
              style: TextStyle(
                  color: Color(0xffA6ED4B),
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 5, right: 5),
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
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Sites();
                              }));
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
                    padding: EdgeInsets.only(top: 5, left: 20),
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
    );
  }
}
