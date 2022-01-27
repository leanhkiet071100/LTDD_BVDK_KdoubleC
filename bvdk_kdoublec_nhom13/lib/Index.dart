import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'DemoSites.dart';
import 'Search.dart';
import 'Sites.dart';
import 'datapost/PostOject.dart';
import 'datapost/PostProvider.dart';
import 'post/post.dart';
import 'package:path/path.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return IndexState();
  }
}

class IndexState extends State<Index> {
  List<PostObject> lsPosts = [];
  void _LoadPosts() async {
    final data = await PostProvider.fecthPost();
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
      body: ListView.builder(
        itemCount: lsPosts.length,
        itemBuilder: (context, index) => Card(
          color: Colors.white,
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  child: Text('Q'),
                ),
                title: Text(
                  lsPosts[index].Hoten_Nguoidung,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                trailing: PopupMenuButton(
                  icon: Icon(Icons.more_horiz),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      child: ListTile(
                        leading: Icon(Icons.flag_outlined),
                        title: Text('Lưu Bài Viết'),
                        subtitle: Text('Lưu bài viết vào danh sách'),
                      ),
                    ),
                    PopupMenuItem(
                      child: ListTile(
                        leading: Icon(Icons.star_border_outlined),
                        title: Text('Ẩn bài viết'),
                        subtitle: Text('Ẩn đến khi nào được bạn mở lại'),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(10),
                child: Text(lsPosts[index].Noidung),
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 5),
                      child: TextButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  actions: <Widget>[
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          alignment: Alignment.centerRight,
                                          child: IconButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              icon: Icon(Icons.close)),
                                        ),
                                        Container(
                                          width: 400,
                                          height: 300,
                                          padding: EdgeInsets.only(
                                              top: 5, left: 5, right: 5),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                            child: Image.network(
                                              lsPosts[index].Ten_Hinhanh_Ddanh,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(
                                              top: 10, left: 10),
                                          child: Text(
                                            lsPosts[index].Ten_Ddanh,
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.blueAccent),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(
                                              top: 10, left: 10, bottom: 20),
                                          child: Row(
                                            children: [
                                              Flexible(
                                                child: Container(
                                                  child: Text(
                                                    'Địa chỉ: ' +
                                                        lsPosts[index]
                                                            .Diachi_Ddanh,
                                                    style:
                                                        TextStyle(fontSize: 18),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                );
                              });
                        },
                        child: Text(
                          'Điểm đến: ' + lsPosts[index].Ten_Ddanh,
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Image.network(
                        lsPosts[index].Ten_Hinhanh,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5, left: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.comment,
                        color: Colors.blue,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.share,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(top: 5, left: 20, bottom: 10),
                child: Text(lsPosts[index].Luotthich + ' lượt thích'),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Post();
          }));
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
      ),
    );
  }
}

/*class PostList extends StatelessWidget {
  final List<PostObject> lsPosts;
  const PostList({Key? key, required this.lsPosts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: ListView.builder(
        itemCount: lsPosts.length,
        itemBuilder: (context, index) => Card(
          color: Colors.white,
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  child: Text('Q'),
                ),
                title: Text(
                  lsPosts[index].Hoten_Nguoidung,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                trailing: PopupMenuButton(
                  icon: Icon(Icons.more_horiz),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      child: ListTile(
                        leading: Icon(Icons.flag_outlined),
                        title: Text('Lưu Bài Viết'),
                        subtitle: Text('Lưu bài viết vào danh sách'),
                      ),
                    ),
                    PopupMenuItem(
                      child: ListTile(
                        leading: Icon(Icons.star_border_outlined),
                        title: Text('Ẩn bài viết'),
                        subtitle: Text('Ẩn đến khi nào được bạn mở lại'),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(10),
                child: Text(lsPosts[index].Noidung),
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 5),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Sites(
                                        lsSit: lsPosts,
                                      )));
                        },
                        child: Text(
                          'Điểm đến: ' + lsPosts[index].Ten_Ddanh,
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      child: Image.network(
                        lsPosts[index].Ten_Hinhanh,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5, left: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.comment,
                        color: Colors.blue,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.share,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(top: 5, left: 20, bottom: 10),
                child: Text(lsPosts[index].Luotthich + ' lượt thích'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/
