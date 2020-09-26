import 'package:flutter/material.dart';
import 'package:lavie/widgets/idea.dart';
import 'package:lavie/widgets/idea_card.dart';

class IdeaList extends StatelessWidget {
  final List<Idea> ideaList;

  IdeaList({Key key, @required this.ideaList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ideaList.length,
      itemBuilder: (BuildContext context, int index) {
        return IdeaCard(
          idea: ideaList[index],
        );
      },
    );
  }
}
