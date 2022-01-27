import 'package:flutter/material.dart';
import 'Search.dart';
import 'Sites.dart';
import 'datajson/SitesObject.dart';
import 'datajson/SitesProvider.dart';

class Hightlight extends StatefulWidget {
  const Hightlight({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HightlightState();
  }
}

class HightlightState extends State<Hightlight> {
  List<SitesObject> lsPosts = [];
  void _LoadPosts() async {
    final data = await SitesProvider.fecthSites();
    setState(() {});
    lsPosts = data;
  }

  @override
  void initState() {
    super.initState();
    _LoadPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffA6ED4B),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Search();
              }));
            },
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          CircleAvatar(
            child: Text('C'),
            backgroundColor: Colors.black,
          ),
          Padding(
            padding: EdgeInsets.only(right: 5),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.logout,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'images/bk2.jpg',
                      width: 500,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'TOP ĐỊA DANH NỔI BẬT',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: lsPosts.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.only(top: 10, right: 10, left: 10),
                          width: 400,
                          height: 180,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Image.network(
                              lsPosts[index].Ten_Hinhanh_Ddanh,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(left: 20),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Sites(
                                    lsSit: lsPosts[index],
                                  ),
                                ),
                              );
                            },
                            child: Text(
                              lsPosts[index].Ten_Ddanh,
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(left: 20, bottom: 5),
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.red,
                              ),
                              Flexible(
                                child: Text(
                                  lsPosts[index].Diachi_Ddanh,
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      color: Colors.black,
                                      fontSize: 18),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*class SitesStateLoad extends StatelessWidget {
  final List<SitesObject> lsSites;
  const SitesStateLoad({Key? key, required this.lsSites}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: lsSites.length,
      itemBuilder: (BuildContext context, index) {
        return Card(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 10, right: 10, left: 10),
                width: 400,
                height: 180,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  child: Image.network(
                    lsSites[index].Ten_Hinhanh_Ddanh,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 20),
                child: TextButton(
                  onPressed: () {
                    /*Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Sites(
                                  lsSit: lsSites[index],
                                )));*/
                  },
                  child: Text(
                    lsSites[index].Ten_Ddanh,
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 20, bottom: 5),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.red,
                    ),
                    Flexible(
                      child: Text(
                        lsSites[index].Diachi_Ddanh,
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.black,
                            fontSize: 18),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}*/
