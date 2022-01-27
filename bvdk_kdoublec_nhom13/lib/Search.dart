import 'package:flutter/material.dart';

import 'datajson/SitesObject.dart';
import 'datajson/SitesProvider.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SearchState();
  }
}

class SearchState extends State<Search> {
  List<SitesObject> lsSites = [];
  TextEditingController txtsearch = TextEditingController();
  /*void _searchContact() async {
    if (txtsearch.text.isNotEmpty) {
      setState(() {});
      lsSites = await SitesProvider.searchSites(txtsearch.text);
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffA6ED4B),
        title: Container(
          padding: EdgeInsets.all(10),
          child: TextField(
            controller: txtsearch,
            decoration:
                InputDecoration.collapsed(hintText: 'Tìm địa danh muốn đi'),
          ),
        ),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: lsSites.length,
            itemBuilder: (context, index) {
              return Expanded(
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
                          lsSites[index].Ten_Ddanh,
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
              );
            }),
      ),
    );
  }
}
