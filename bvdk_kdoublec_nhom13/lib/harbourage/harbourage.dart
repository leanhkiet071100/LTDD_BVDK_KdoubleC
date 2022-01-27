import 'package:bvdk_kdoublec_nhom13/dataharbou/HarbouObject.dart';
import 'package:bvdk_kdoublec_nhom13/dataharbou/HarbouProvider.dart';
import 'package:bvdk_kdoublec_nhom13/datajson/SitesObject.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Search.dart';

class Harbourage extends StatefulWidget {
  final SitesObject lsSite;
  Harbourage({Key? key, required this.lsSite}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return HarbourageState(lsSite: lsSite);
  }
}

class HarbourageState extends State<Harbourage> {
  final SitesObject lsSite;
  HarbourageState({required this.lsSite});
  List<HarbouObject> lsHar = [];
  void _loadHar() async {
    final data = await HarbouProvider.fecthHarbou();
    setState(() {});
    lsHar = data;
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
          'Nơi lưu trú ở: ' + lsSite.Ten_Ddanh,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
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
                      'images/khachsan/KS1.jpg',
                      width: 500,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'Nơi lưu trú',
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
                shrinkWrap: true,
                itemCount: lsHar.length,
                itemBuilder: (contex, index) => Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (lsSite.Id_Ddanh.toString() ==
                          lsHar[index].Id_Ddanh.toString())
                        Container(
                          width: 400,
                          height: 175,
                          padding: EdgeInsets.all(10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Image.network(
                              lsHar[index].Hinh_Noiluutru,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      if (lsSite.Id_Ddanh.toString() ==
                          lsHar[index].Id_Ddanh.toString())
                        Container(
                          padding: EdgeInsets.only(left: 10, bottom: 5),
                          child: Text(
                            lsHar[index].Ten_Noiluutru,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                      if (lsSite.Id_Ddanh.toString() ==
                          lsHar[index].Id_Ddanh.toString())
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
                                    lsHar[index].Diachi_Noiluutru,
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
                      if (lsSite.Id_Ddanh.toString() ==
                          lsHar[index].Id_Ddanh.toString())
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
                                    lsHar[index].SDT_Noiluutru,
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
      ),
    );
  }
}
