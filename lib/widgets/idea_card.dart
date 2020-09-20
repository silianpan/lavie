import 'package:flutter/material.dart';

class IdeaCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      alignment: Alignment.topCenter,
      fit: BoxFit.contain,
      child: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.all(12.0),
        color: Colors.red,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://www.woolha.com/media/2020/03/eevee.png'),
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
                            '潇洒的一条狗',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.0),
                          ),
                          Text(
                            '攻城狮 3小时前',
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
                  'vue-admin-beautiful-pro版本发布了',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                ),
              ]),
            ),
            Container(
              height: 300,
              width: 200,
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 4,
                children: <Widget>[
                  Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://p9-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/8669bf1c7d8345cab73651bc9be925b6~tplv-k3u1fbpfcp-zoom-1.image'),
                  ),
                  Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://p9-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/8669bf1c7d8345cab73651bc9be925b6~tplv-k3u1fbpfcp-zoom-1.image'),
                  ),
                  Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://p9-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/8669bf1c7d8345cab73651bc9be925b6~tplv-k3u1fbpfcp-zoom-1.image'),
                  ),
                  Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://p9-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/8669bf1c7d8345cab73651bc9be925b6~tplv-k3u1fbpfcp-zoom-1.image'),
                  ),
                  Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://p9-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/8669bf1c7d8345cab73651bc9be925b6~tplv-k3u1fbpfcp-zoom-1.image'),
                  ),
                  Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://p9-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/8669bf1c7d8345cab73651bc9be925b6~tplv-k3u1fbpfcp-zoom-1.image'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
