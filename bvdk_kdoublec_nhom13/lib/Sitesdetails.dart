import 'package:flutter/material.dart';

import 'Search.dart';

class Sitesdetails extends StatefulWidget {
  const Sitesdetails({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SitesdetailsState();
  }
}

class SitesdetailsState extends State<Sitesdetails> {
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
          children: [
            Container(
              padding: EdgeInsets.only(top: 5),
              child: Card(
                color: Colors.grey[300],
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      child: ListTile(
                        title: Text(
                          'Tây Sơn - Bình Định',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_ios)),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5, left: 10, right: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        child: Image.asset(
                          'images/bk3.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              'Đánh giá: ',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.red,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.red,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.red,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.red,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.red,
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.location_on_outlined,
                              color: Colors.red,
                            ),
                          ),
                          Container(
                            child: Text(
                              'Xã Tây Sơn, Huyện Tây Sơn, Tỉnh Vĩnh Long',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.description,
                              color: Colors.blue,
                            ),
                          ),
                          Container(
                            child: Text(
                              'Vùng đất nẳm ở trung tỉnh Bình Định, huyện Tây Sơn mang \nđến cho chúng ta nhũng trãi nghiệm thật tuyệt vời. Đến đây \n bạn sẽ được tận hưởng hương vị của miền Trung Việt Nam, \nnhiều món ăn ngon, nhiều nới du lịch, nghĩ dưỡng hạng cao, \nchắc chắn bạn sẽ có một trải nghiệm tuyệt vời.',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5, bottom: 5, left: 10),
                      alignment: Alignment.centerLeft,
                      child: Text('Lê Anh Kiệt và những người khác đã đến đây'),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 5),
              child: Card(
                color: Colors.grey[300],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 5, bottom: 5),
                      alignment: Alignment.center,
                      child: Text(
                        'THÔNG TIN CỤ THỂ',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 30, left: 10),
                      child: Text(
                        'Khí hậu: ',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 30, left: 10),
                      child: Text(
                        'Khoáng sản: ',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 30, left: 10),
                      child: Text(
                        'Cảnh vật: ',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding:
                                EdgeInsets.only(left: 10, top: 30, right: 100),
                            child: Text(
                              'Kinh độ: ',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 30, bottom: 30),
                            child: Text(
                              'Vĩ độ: ',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
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
