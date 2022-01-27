import 'package:bvdk_kdoublec_nhom13/Layout/layout.dart';
import 'package:bvdk_kdoublec_nhom13/Sites.dart';
import 'package:bvdk_kdoublec_nhom13/dataRetaurant/RestauObject.dart';
import 'package:bvdk_kdoublec_nhom13/dataRetaurant/RestauProvider.dart';
import 'package:bvdk_kdoublec_nhom13/datajson/SitesObject.dart';
import 'package:bvdk_kdoublec_nhom13/food/food.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Search.dart';

class Restaurant extends StatefulWidget {
  final SitesObject lsSiteRes;
  Restaurant({Key? key, required this.lsSiteRes}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return RestaurantState(lsSiteRes: lsSiteRes);
  }
}

class RestaurantState extends State<Restaurant> {
  final SitesObject lsSiteRes;
  RestaurantState({required this.lsSiteRes});
  List<RestauObject> lsRes = [];
  void _loadHar() async {
    final data = await RestauProvider.fecthHarbou();
    setState(() {});
    lsRes = data;
  }

  @override
  void initState() {
    super.initState();
    _loadHar();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffA6ED4B),
        title: Text(
          'Quán ăn ở: ' + lsSiteRes.Ten_Ddanh,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30)),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'images/bk23.jpg',
                    width: 500,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      'Quán Ăn',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: lsRes.length,
              itemBuilder: (context, index) => Card(
                child: Column(
                  children: [
                    if (lsSiteRes.Id_Ddanh.toString() ==
                        lsRes[index].Id_Ddanh.toString())
                      Container(
                        width: 400,
                        height: 175,
                        padding: EdgeInsets.all(10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: InkWell(
                            child: Image.network(
                              lsRes[index].Hinh_Quan,
                              fit: BoxFit.cover,
                            ),
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Food(
                                  lsRestau: lsRes[index],
                                );
                              }));
                            },
                          ),
                        ),
                      ),
                    if (lsSiteRes.Id_Ddanh.toString() ==
                        lsRes[index].Id_Ddanh.toString())
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 10, bottom: 5),
                        child: Text(
                          'Tên quán: ' + lsRes[index].Ten_Quan,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                    if (lsSiteRes.Id_Ddanh.toString() ==
                        lsRes[index].Id_Ddanh.toString())
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 10, bottom: 5),
                              child: Icon(
                                Icons.location_on,
                                color: Colors.blue,
                              ),
                            ),
                            Flexible(
                              child: Container(
                                child: Text(
                                  lsRes[index].Diachi_Quan,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    if (lsSiteRes.Id_Ddanh.toString() ==
                        lsRes[index].Id_Ddanh.toString())
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 10, bottom: 5),
                              child: Icon(
                                Icons.phone,
                                color: Colors.red,
                              ),
                            ),
                            Flexible(
                              child: Container(
                                child: Text(
                                  lsRes[index].SDT_Quan,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
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
        ],
      ),
    );
  }
}
