import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'Search.dart';
import 'Sites.dart';
import 'datapost/PostOject.dart';
import 'datapost/PostProvider.dart';
import 'post/post.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return IndexState();
  }
}

class IndexState extends State<Index> {
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
      body: FutureBuilder<List<PostObject>>(
          future: PostProvider.fecthPost(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text('Có lỗi xảy ra !'),
              );
            } else if (snapshot.hasData) {
              return PostList(lsPosts: snapshot.data!);
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Post();
          }));
        },
        child: Icon(Icons.add),
        backgroundColor: Color(0xffA6ED4B),
      ),
    );
  }
}

class PostList extends StatelessWidget {
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
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Sites();
                          }));
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
}
