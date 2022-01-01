import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NotificationsState();
  }
}

class NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Thông báo",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                child: ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200],
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/bk1.jpg"),
                      radius: 25,
                    ),
                  ),
                  title: Text("Đây là thông báo"),
                  subtitle: Text("Ngày"),
                  trailing: PopupMenuButton(
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem(
                          child: Text("Xóa"),
                          onTap: () {},
                        ),
                        PopupMenuItem(
                          child: Text("Ẩn"),
                          onTap: () {},
                        ),
                      ];
                    },
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
