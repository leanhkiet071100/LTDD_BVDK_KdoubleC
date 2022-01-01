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
        ],
      ),
    );
  }
}
