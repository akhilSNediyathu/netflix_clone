import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentaion/search/widget/title.dart';
const imageUrl = 'https://image.tmdb.org/t/p/original/p1AjA8ah8Ynjpcfl3bjVIeXZcYY.jpg';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: 'Movies & TV'),
        kheight,
        Expanded(child: GridView.count(
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 1/1.4,
          shrinkWrap: true,
          crossAxisCount: 3,
          children: 
          List.generate(20, (index) {
            return const MainCard();
          },
          )
          ,
          ))
      ],
    );
  }
}
class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        image: const DecorationImage(image: 
        NetworkImage(imageUrl,),fit: BoxFit.cover
        ),
        borderRadius: BorderRadius.circular(7)
      ),
    );
  }
}