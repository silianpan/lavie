import 'package:flutter/material.dart';

class IdeaCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: <Widget>[
        Expanded(
            flex: 1,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://www.woolha.com/media/2020/03/eevee.png'),
              // radius: 200,
            )),
        Expanded(
            flex: 1,
            child: Flex(
              direction: Axis.vertical,
              children: <Widget>[
                Expanded(flex: 1, child: Text('潇洒的一条狗')),
                Expanded(flex: 1, child: Text('工程师 3小时前'))
              ],
            ))
      ],
    );
  }
}
