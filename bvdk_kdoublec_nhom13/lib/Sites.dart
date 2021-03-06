import 'dart:ffi';

import 'package:bvdk_kdoublec_nhom13/datajson/SitesObject.dart';
import 'package:flutter/material.dart';
import 'Search.dart';
import 'Sitesdetails.dart';
import 'dataharbou/HarbouObject.dart';
import 'datapost/PostOject.dart';
import 'food/food.dart';
import 'food/restaurant.dart';
import 'harbourage/harbourage.dart';
import 'package:path/path.dart';

class Sites extends StatefulWidget {
  final SitesObject lsSit;
  const Sites({Key? key, required this.lsSit}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SitesState(lsSit: lsSit);
  }
}

class SitesState extends State<Sites> {
  final SitesObject lsSit;
  SitesState({required this.lsSit});
  TextEditingController txtNameSit = TextEditingController();
  TextEditingController txtNamePic = TextEditingController();
  List<PostObject> lsPosts = [];
  List<SitesObject> lsSites = [];
  List<HarbouObject> lsHarbou = [];
  void building() async {
    setState(() {});
    txtNameSit.text = lsSit.Ten_Ddanh;
    txtNamePic.text = lsSit.Ten_Hinhanh_Ddanh;
  }

  @override
  void initState() {
    super.initState();
    building();
  }

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
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: 1,
        itemBuilder: (context, index) => Container(
          padding: EdgeInsets.only(top: 5),
          child: Card(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  alignment: Alignment.center,
                  child: Text(
                    lsSit.Ten_Ddanh,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffA6ED4B)),
                  ),
                ),
                Container(
                  width: 400,
                  height: 300,
                  padding: EdgeInsets.only(top: 5, left: 10, right: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    child: Image.network(
                      lsSit.Ten_Hinhanh_Ddanh,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 15),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.assessment_outlined,
                          color: Colors.greenAccent,
                          size: 30,
                        ),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.red,
                        size: 30,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.red,
                        size: 30,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.red,
                        size: 30,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.red,
                        size: 30,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.red,
                        size: 30,
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
                        child: Icon(Icons.location_on_outlined,
                            color: Colors.red, size: 30),
                      ),
                      Flexible(
                        child: Container(
                          child: Text(
                            'Địa chỉ: ' + lsSit.Diachi_Ddanh,
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      )
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
                        child: Icon(Icons.description,
                            color: Colors.blue, size: 30),
                      ),
                      Flexible(
                        child: Container(
                          child: Text(
                            'Vùng đất nẳm ở trung tỉnh Bình Định, huyện Tây Sơn mang đến cho chúng ta nhũng trãi nghiệm thật tuyệt vời. Đến đây bạn sẽ được tận hưởng hương vị của miền Trung Việt Nam, nhiều món ăn ngon, nhiều nới du lịch, nghĩ dưỡng hạng cao, chắc chắn bạn sẽ có một trải nghiệm tuyệt vời.',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 110,
                        child: TextButton(
                          child: Text(
                            'Xem bản đồ',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xffA6ED4B)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        width: 110,
                        child: TextButton(
                          child: Text(
                            'Xem quán ăn',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xffA6ED4B)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Restaurant(
                                lsSiteRes: lsSit,
                              );
                            }));
                          },
                        ),
                      ),
                      Container(
                        width: 110,
                        child: TextButton(
                          child: Text(
                            'Xem nơi ở',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xffA6ED4B)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Harbourage(lsSite: lsSit);
                            }));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10, top: 5, bottom: 5),
                        child: Text(
                          'Các chi tiết khác của địa danh',
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              fontSize: 24),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20, left: 10),
                        child: Text(
                          'Khí hậu: ' + lsSit.Khihau,
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20, left: 10),
                        child: Text(
                          'Khoáng sản: ' + lsSit.Tainguyen,
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20, left: 10),
                        child: Text(
                          'Cảnh vật: ' + lsSit.Canhvat,
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10, top: 20, right: 100),
                        child: Text(
                          'Kinh độ: ' + lsSit.Kinhdo,
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10, top: 20, bottom: 30),
                        child: Text(
                          'Vĩ độ: ' + lsSit.Vido,
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
