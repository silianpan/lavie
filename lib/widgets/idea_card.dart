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
                  '看最美的风景，看最优秀的人，致自己，最优秀的自己',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                ),
              ]),
            ),
            // GridView(
            //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //       crossAxisCount: 3, //横轴三个子widget
            //       childAspectRatio: 1.0 //宽高比为1时，子widget
            //       ),
            //   children: <Widget>[
            //     Icon(Icons.ac_unit),
            //     Icon(Icons.airport_shuttle),
            //     Icon(Icons.all_inclusive),
            //     Icon(Icons.beach_access),
            //     Icon(Icons.cake),
            //     Icon(Icons.free_breakfast)
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
