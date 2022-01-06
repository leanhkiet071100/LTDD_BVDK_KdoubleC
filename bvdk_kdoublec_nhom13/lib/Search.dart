import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SearchState();
  }
}

class SearchState extends State<Search> {
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
      ),
      body: Center(
        child: ListView(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.red,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Tên địa danh ',
                        style: TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
