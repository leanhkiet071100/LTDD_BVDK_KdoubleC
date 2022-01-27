/*import 'dart:ffi';

import 'package:bvdk_kdoublec_nhom13/datajson/SitesObject.dart';
import 'package:flutter/material.dart';
import 'Search.dart';
import 'Sitesdetails.dart';
import 'datapost/PostOject.dart';
import 'food/food.dart';
import 'food/restaurant.dart';
import 'harbourage/harbourage.dart';
import 'package:path/path.dart';

class DemoSites extends StatefulWidget {
  final PostObject lsSit;
  const DemoSites({Key? key, required this.lsSit}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return DemoSitesState(lsSit: lsSit);
  }
}

class DemoSitesState extends State<DemoSites> {
  final PostObject lsSit;
  DemoSitesState({required this.lsSit});
  TextEditingController txtNameSit = TextEditingController();
  TextEditingController txtNamePic = TextEditingController();
  List<PostObject> lsPosts = [];
  void building() async {
    setState(() {});
    txtNameSit.text = lsSit.Ten_Ddanh;
    txtNamePic.text = lsSit.Ten_Hinhanh;
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 400,
                  height: 300,
                  padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    child: Image.network(
                      lsSit.Ten_Hinhanh_Ddanh,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, left: 20),
                  child: Text(
                    lsSit.Ten_Ddanh,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffA6ED4B)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, left: 20),
                  child: Row(
                    children: [
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
                  padding: EdgeInsets.only(top: 10, left: 20),
                  child: Row(
                    children: [
                      Flexible(
                        child: Container(
                          child: Text(
                            'Kinh độ: ' + lsSit.Kinhdo,
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, left: 20),
                  child: Row(
                    children: [
                      Flexible(
                        child: Container(
                          child: Text(
                            'Vĩ độ: ' + lsSit.Vido,
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, left: 20, right: 20),
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
                              return Restaurant();
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
                              return Harbourage();
                            }));
                          },
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
}*/