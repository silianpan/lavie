import 'package:flutter/material.dart';

class IdeaCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Card(
          margin: EdgeInsets.all(16.0),
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
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
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0),
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
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.0),
                    ),
                  ]),
                ),
              ],
            ),
          )),
    );
  }
}
