import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class food extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ClipRRect(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(50), bottomLeft: Radius.circular(50)),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'images/bk1.jpg',
                  width: 500,
                  height: 225,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: 150,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Text(
                            'Tên quán ăn',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'địa chỉ ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Số điện thoại',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 5, bottom: 5),
              alignment: Alignment.center,
              child: Text(
                'Món ăn',
                style: TextStyle(
                    color: Color(0xffA6ED4B),
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) => Card(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Card(
                    child: Column(
                      children: [
                        ListTile(
                          leading: Image.network('images/bk1.jpg'),
                          title: Text(
                            'Tên món ăn',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
