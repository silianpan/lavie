import 'package:flutter/material.dart';

class IdeaCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          height: 60.0,
          width: 60.0,
          child: CircleAvatar(
            backgroundImage:
                NetworkImage('https://www.woolha.com/media/2020/03/eevee.png'),
            radius: 40,
          ),
        ),
      ],
    );
  }
}
