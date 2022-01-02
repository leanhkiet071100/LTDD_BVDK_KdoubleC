import 'package:bvdk_kdoublec_nhom13/food/food.dart';
import 'package:bvdk_kdoublec_nhom13/food/restaurant.dart';
import 'package:bvdk_kdoublec_nhom13/harbourage/harbourage.dart';
import 'package:bvdk_kdoublec_nhom13/load/load.dart';
import 'package:bvdk_kdoublec_nhom13/notifications/notifications.dart';
import 'package:bvdk_kdoublec_nhom13/post/post.dart';

import 'package:flutter/material.dart';
import 'Login.dart';
import 'food/food.dart';
import 'food/restaurant.dart';
import 'harbourage/harbourage.dart';
import 'SetPerInfor.dart';
import 'SetPass.dart';
import 'SercuInfo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BVDK_KDoubleC',
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
