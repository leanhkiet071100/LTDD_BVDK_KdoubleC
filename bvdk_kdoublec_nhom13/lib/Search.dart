import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SearchState();
  }
}

class SearchState extends State<Search> {
  Widget Search_Location = Card(
    child: Row(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          width: 200,
          height: 150,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            child: Image.asset(
              'images/bk3.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          width: 4,
          height: 4,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tây Sơn - Bình Định',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 4,
              height: 4,
            ),
            Row(
              children: [
                Icon(Icons.star, color: Colors.red),
                Icon(Icons.star, color: Colors.red),
                Icon(Icons.star, color: Colors.red),
                Icon(Icons.star, color: Colors.red),
                Icon(Icons.star, color: Colors.red),
              ],
            ),
            SizedBox(
              width: 4,
              height: 4,
            ),
            Text(
              'Địa chỉ: Xã Tây An, Huyện Tây Sơn,\n'
              'Tỉnh Bình Định',
              style: TextStyle(fontSize: 13),
            ),
            SizedBox(
              width: 4,
              height: 4,
            ),
            Text(
              'Lê Anh Kiệt đã đến đây',
              style: TextStyle(fontSize: 13),
            ),
          ],
        ),
        SizedBox(
          width: 4,
          height: 4,
        ),
        Container(
          padding: EdgeInsets.only(left: 30),
          alignment: Alignment.centerRight,
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_forward_ios),
          ),
        ),
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffA6ED4B),
        title: Container(
          padding: EdgeInsets.all(10),
          child: TextField(
            decoration:
                InputDecoration.collapsed(hintText: 'Tìm địa danh muốn đi'),
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 20),
            child: CircleAvatar(
              backgroundColor: Colors.black,
              child: Text('C'),
            ),
          ),
        ],
      ),
      body: Center(
        child: ListView(
          children: [
            Search_Location,
            Search_Location,
            Search_Location,
          ],
        ),
      ),
    );
  }
}
