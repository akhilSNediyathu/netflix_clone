import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:netflix/core/colours/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentaion/search/widget/title.dart';
const imageUrl ='https://lh4.googleusercontent.com/proxy/1q9NRpASuGN_cmmMoc2fvRiNs1QLWJicZ7kU5gv-OLrDKryPMjo4NoGIIoz39DPyvyh6nTrWqiphFjr-kLZrS2DDkXznp17DwwQ';
class SearchIdeWidget extends StatelessWidget {
  const SearchIdeWidget({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         const SearchTextTitle(title: 'Top Searches',),
            kheight,
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (ctx,index)=>const TopSearchItemTile(), separatorBuilder: (ctx,index)=>kheight20, itemCount: 10),
            ),


      ],
    );
  }
}


class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width:screenWidth*0.35 ,
          height: 70,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover
              )
          ),
        ),
       const Expanded(child: Text('Movie Name',style: TextStyle(color: kwhiteColor,fontSize: 16,fontWeight: FontWeight.bold),)),
        const CircleAvatar(
          backgroundColor: kwhiteColor,
          radius: 25,
          child:  CircleAvatar(
          backgroundColor: kblackColor,
          radius: 23,
          child: Icon(CupertinoIcons.play_fill,color: kwhiteColor,),
        ),
        )

      ],
    );
  }
}