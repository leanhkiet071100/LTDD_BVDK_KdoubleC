import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiaDanh extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DiaDanhState();
}

class _DiaDanhState extends State<DiaDanh> {
  String dropdownValue = 'All'; // Khai báo giá trị đàu tiên
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "DANH SÁCH ĐỊA DANH",
            style: TextStyle(color: Color(0xffA6ED4B)),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DropdownButton<String>(
                value:
                    dropdownValue, // giá trị đầu tiên hiển thị (phải có trong item)
                icon: const Icon(Icons.arrow_downward),
                elevation: 16,
                style: const TextStyle(color: Colors.deepPurple),
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>['All', 'Nam', 'Trung', 'Bắc']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              Text('Nhu cầu:'),
              for (int i = 0; i < 5; i++)
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[200],
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Phượt',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                child: Column(
                  children: [
                    ListTile(
                      leading: Container(
                        child: Image.asset(
                          'images/bk1.jpg',
                          width: 100,
                          height: 100,
                        ),
                      ),
                      title: Text("Tên địa danh"),
                      subtitle: Align(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Vùng niềm',
                              style: TextStyle(),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.red,
                                ),
                                Text('4.5'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      trailing: PopupMenuButton(
                        itemBuilder: (context) {
                          return [
                            PopupMenuItem(
                              child: Text("Xem chi tiết"),
                              onTap: () {},
                            ),
                            PopupMenuItem(
                              child: Text("chia sẻ địa danh"),
                              onTap: () {},
                            ),
                          ];
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
