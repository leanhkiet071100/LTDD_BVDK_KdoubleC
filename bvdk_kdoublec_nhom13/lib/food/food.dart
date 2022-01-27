import 'package:bvdk_kdoublec_nhom13/dataFood/FoodObject.dart';
import 'package:bvdk_kdoublec_nhom13/dataFood/FoodProvider.dart';
import 'package:bvdk_kdoublec_nhom13/dataRetaurant/RestauObject.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Food extends StatefulWidget {
  final RestauObject lsRestau;
  Food({Key? key, required this.lsRestau}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return FoodState(lsRestau: lsRestau);
  }
}

class FoodState extends State<Food> {
  final RestauObject lsRestau;
  FoodState({required this.lsRestau});
  List<FoodObject> lsFood = [];
  void _loadFood() async {
    final data = await FoodProvider.fecthFood();
    setState(() {});
    lsFood = data;
  }

  @override
  void initState() {
    super.initState();
    _loadFood();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffA6ED4B),
        title: Text(
          'Quán ăn: ' + lsRestau.Ten_Quan,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
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
                    'images/bk22.jpg',
                    width: 500,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      'Món Ăn',
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
              itemCount: lsFood.length,
              itemBuilder: (context, index) => Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (lsRestau.Id_Quan.toString() ==
                            lsFood[index].Id_Quan)
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            width: 400,
                            height: 150,
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: Image.network(
                                lsFood[index].Hinh_Mon,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        if (lsRestau.Id_Quan.toString() ==
                            lsFood[index].Id_Quan)
                          Container(
                            child: Text(
                              'Tên món: ' + lsFood[index].Ten_Mon,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic),
                            ),
                          ),
                        if (lsRestau.Id_Quan.toString() ==
                            lsFood[index].Id_Quan)
                          Container(
                            child: Text(
                              'Giá: ' + lsFood[index].Gia_ban + ' vnđ',
                              style: TextStyle(
                                  fontSize: 16, fontStyle: FontStyle.italic),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
