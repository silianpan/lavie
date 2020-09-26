import 'package:flutter/material.dart';
import 'package:lavie/widgets/iconfont.dart';
import 'package:lavie/widgets/idea.dart';

class IdeaCard extends StatelessWidget {
  final Idea idea;

  IdeaCard({Key key, @required this.idea}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.only(left: 0, right: 0, top: 10),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(idea.avatar),
                        radius: 20,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Column(
                    children: <Widget>[
                      Flex(
                        direction: Axis.vertical,
                        children: <Widget>[
                          Text(
                            idea.name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.0),
                          ),
                          Text(
                            idea.role + ' ' + idea.time,
                            style: TextStyle(fontSize: 13.0),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: Wrap(children: <Widget>[
                Text(
                  idea.info,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                ),
              ]),
            ),
            Column(
              children: <Widget>[
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, // 横轴三个子widget
                    childAspectRatio: 1.0, // 宽高比为1时，子widget
                    crossAxisSpacing: 4,
                  ),
                  shrinkWrap: true,
                  itemCount: idea.photoList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(idea.photoList[index]),
                    );
                  },
                ),
              ],
            ),
            OutlineButton(
              onPressed: () {},
              child: Text(idea.category),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              textColor: Colors.blue,
              borderSide: BorderSide(color: Colors.blue),
            ),
            Padding(
              padding: EdgeInsets.only(top: 6.0),
              child: Divider(color: Colors.grey),
            ),
            Flex(
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flex(
                  direction: Axis.horizontal,
                  children: [
                    Icon(
                      IconFont.icon0_like1,
                      color: Colors.grey,
                    ),
                    Text(
                      '点赞',
                      style: TextStyle(fontSize: 16.0),
                    )
                  ],
                ),
                Flex(
                  direction: Axis.horizontal,
                  children: [
                    Icon(
                      IconFont.iconpinglun_tongyong,
                      color: Colors.grey,
                    ),
                    Text(
                      '评论',
                      style: TextStyle(fontSize: 16.0),
                    )
                  ],
                ),
                Flex(
                  direction: Axis.horizontal,
                  children: [
                    Icon(
                      IconFont.iconshare,
                      color: Colors.grey,
                    ),
                    Text(
                      '分享',
                      style: TextStyle(fontSize: 16.0),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
