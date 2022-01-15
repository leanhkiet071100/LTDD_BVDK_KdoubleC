import 'package:bvdk_kdoublec_nhom13/Index.dart';

import 'datajson/SitesObject.dart';
import 'datajson/SitesProvider.dart';
import 'package:flutter/material.dart';
import 'Search.dart';
import 'Sites.dart';
import 'DiaDanh/diadanh.dart';

class Hightlight extends StatefulWidget {
  const Hightlight({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HightlightState();
  }
}

class HightlightState extends State<Hightlight> {
  List<SitesObject> lsSit = [];
  TextEditingController txtname = TextEditingController();
  TextEditingController txtDc = TextEditingController();
  TextEditingController txtpic = TextEditingController();
  TextEditingController txtnb = TextEditingController();

  void _LoadSites() async {
    final data = await SitesProvider.getAllSites();
    setState(() {});
    lsSit = data;
  }

  @override
  void initState() {
    super.initState();
    _LoadSites();
  }

  @override
  Widget build(
    BuildContext context,
  ) {
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
        child: Column(
          children: <Widget>[
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'images/bk2.jpg',
                      width: 500,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'TOP ĐỊA DANH NỔI BẬT',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (BuildContext context, index) {
                  return Card(
                    child: Column(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.only(top: 10, right: 10, left: 10),
                          width: 400,
                          height: 180,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: Image.network(
                              lsSit[index].Ten_Hinhanh,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(left: 20),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              lsSit[index].Ten_Ddanh,
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(left: 20, bottom: 5),
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.red,
                              ),
                              Flexible(
                                child: Text(
                                  lsSit[index].Diachi_Ddanh,
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      color: Colors.black,
                                      fontSize: 18),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
