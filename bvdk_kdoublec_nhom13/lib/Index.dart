import 'package:flutter/material.dart';
import 'Search.dart';
import 'Sites.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return IndexState();
  }
}

class IndexState extends State<Index> {
  Widget Createrost = Container(
    alignment: Alignment.center,
    padding: EdgeInsets.only(left: 5, right: 5),
    child: Card(
      color: Colors.grey[300],
      child: ListTile(
        leading: CircleAvatar(
          child: Text('C'),
          backgroundColor: Colors.black,
        ),
        title: TextField(
          enabled: false,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            hintText: "Tạo bài viết mới",
          ),
        ),
        trailing: Icon(Icons.add),
        onTap: () {},
      ),
    ),
  );
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
        child: ListView(
          children: <Widget>[
            Createrost,
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 5, right: 5),
              child: Card(
                color: Colors.grey[300],
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Text('Q'),
                      ),
                      title: Text(
                        'Nguyễn Thanh Quí',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
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
                      child: Text('Nơi đây thật tuyệt vời'),
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
                                'Điểm đến: Tây Sơn - Bình Định',
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
                            child: Image.asset(
                              'images/bk3.jpg',
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
                      child: Text('Lưu Thành Công và 69 người đã thích.'),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(top: 5, left: 20, bottom: 10),
                      child: Text(
                        'Bình luận: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(top: 2, left: 40, bottom: 10),
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Lưu Thành Công:',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text('Nơi này đẹp quá.')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
