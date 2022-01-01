import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class layoutpost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(50), bottomLeft: Radius.circular(50)),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'images/bk1.jpg',
              width: 500,
              height: 225,
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.only(bottom: 50),
              child: Text('Địa danh',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
