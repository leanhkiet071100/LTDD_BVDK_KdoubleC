import 'package:flutter/material.dart';
import 'Search.dart';

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
  Widget Hightlight_month = Card(
    color: Colors.grey[300],
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.all(5),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Image.asset(
              'images/bk4.jpg',
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 15, top: 10),
              alignment: Alignment.centerLeft,
              child: Text(
                'Tam Bình - Vĩnh Long',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15, top: 10),
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.red,
                  ),
                  Text(
                    'Địa chỉ: 18c, Tổ 5, Khóm 3,\n'
                    'TT Tam Bình, H.Tam Bình, T.Vĩnh Long ',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15, top: 10),
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Icon(
                    Icons.map_outlined,
                    color: Colors.blue,
                  ),
                  Text(
                    'Kinh độ: 10.049445 \n'
                    'Vĩ độ: 105.999843',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15, top: 10),
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Icon(
                    Icons.note,
                    color: Colors.green,
                  ),
                  Text(
                    'Điểm đến được thích nhiều nhất \ntháng này.',
                    style: TextStyle(color: Colors.black, fontSize: 14),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
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
            padding: EdgeInsets.only(top: 10, bottom: 10),
            alignment: Alignment.center,
            child: Text(
              'NỔI BẬT TRONG THÁNG',
              style: TextStyle(
                  color: Color(0xffA6ED4B),
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Hightlight_month,
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Hightlight_month,
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Hightlight_month,
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Hightlight_month,
          ),
        ],
      ),
    );
  }
}
