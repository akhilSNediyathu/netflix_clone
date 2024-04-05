import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colours/colors.dart';
import 'package:netflix/core/constants.dart';

class Numbercard extends StatelessWidget {
  final int index;
  const Numbercard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
          const  SizedBox(height: 200,width: 40,),
            Container(width:130,
            height: 250,
            
            decoration:  BoxDecoration(
              borderRadius: kradius10,
              image: const DecorationImage(image: 
              
              NetworkImage('https://image.tmdb.org/t/p/original/vZloFAK7NmvMGKE7VkF5UHaz0I.jpg',),
              fit: BoxFit.cover
              )
            ),
            ),
          ],
        ),
        Positioned(left: 13,bottom: -30,
          child: BorderedText(
            strokeWidth: 10.0,
            strokeColor: kwhiteColor,
            child: Text('${index+1}',style:const TextStyle(
              color: kblackColor,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
              decorationColor: Colors.black,
              fontSize: 150
            ),),
          ),
        )
      ],
    );
  }
}