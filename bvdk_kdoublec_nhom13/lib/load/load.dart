import 'dart:async';

import 'package:bvdk_kdoublec_nhom13/Login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Load extends StatefulWidget {
  const Load({Key? key}) : super(key: key);

  @override
  State<Load> createState() => _LoadState();
}

class _LoadState extends State<Load> {
  Widget LoginLoad_black = Container(
    width: 500,
    height: 225,
    decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40))),
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: CircleAvatar(
            backgroundColor: Color(0xffA6ED4B),
            radius: 60,
            child: Text(
              'KC',
              style: TextStyle(fontSize: 50, color: Colors.black),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            'BVDK',
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xffA6ED4B)),
          ),
        ),
      ],
    ),
  );

  Widget LoginLoad_Green = Container(
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            'KDoubleC',
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ],
    ),
  );
  final spinkit = Padding(
    padding: EdgeInsets.only(top: 100),
    child: SpinKitThreeBounce(
      color: Colors.white,
      size: 50.0,
    ),
  );
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffA6ED4B),
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          LoginLoad_black,
          LoginLoad_Green,
          spinkit,
        ],
      ),
    );
  }
}
