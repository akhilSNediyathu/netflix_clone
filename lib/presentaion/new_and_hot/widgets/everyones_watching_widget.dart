import 'package:flutter/material.dart';
import 'package:netflix/core/colours/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentaion/home/widgets/custom_button_widget.dart';
import 'package:netflix/presentaion/widgets/video_widget.dart';

class EveryOnesWatching extends StatelessWidget {
  const EveryOnesWatching({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
    crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        kheight,
          Text('Friends',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                 ),),
                 kheight,
                 Text('This hit sitcom follows the merry misadventures of six 20 - something pals as they navigate the pitfalls of work , life and love in 1990s Mahatton',style: TextStyle(
                  color: kgreyColor
                 ),
                 ),
                 kheight50,
                 VideoWidget(),
                 kheight,
                 Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomButtonWidget(icon: Icons.share , title: 'Share',iconsize: 25,textsize:16 ,),
                    kwidth,
                    CustomButtonWidget(icon: Icons.add , title: 'My List',iconsize: 25,textsize:16 ,),
                      kwidth,
                    CustomButtonWidget(icon: Icons.play_arrow , title: 'Play',iconsize: 25,textsize:16,),
                    kwidth
                  ],
                 )
    
      ]
    );
  }
}