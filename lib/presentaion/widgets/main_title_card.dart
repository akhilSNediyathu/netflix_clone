import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentaion/widgets/main_card.dart';
import 'package:netflix/presentaion/widgets/main_title.dart';

class MainTitleCard extends StatelessWidget {
  final String title;
 
  const MainTitleCard({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      MainTitle(title: title),
         kheight,
       LimitedBox(
        maxHeight: 200,
         child: ListView(
          // shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          
          children: List.generate(10, (index) =>const MaincardMain()),
         ),
       )
      ],
    );
  }
}
