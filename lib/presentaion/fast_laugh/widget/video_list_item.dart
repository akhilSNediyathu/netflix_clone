import 'package:flutter/material.dart';
import 'package:netflix/core/colours/colors.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index%Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //left side
                CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(0.5),
                  radius: 30,
                  child: IconButton(onPressed: (){}, icon: const Icon(
                    
                    Icons.volume_off,
                    size: 30,
                    color: kwhiteColor,
                    
                    ))),
                  //right side
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children:[
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage('https://image.tmdb.org/t/p/original/tOmYnPiCsmEWn8pmLQ523Nt5wGd.jpg'),
                    ),
                    VideoActionWidget(icon: Icons.emoji_emotions, title: 'LOL'),
                     VideoActionWidget(icon: Icons.add, title: 'My List'),
                      VideoActionWidget(icon: Icons.share, title: 'Share'),
                       VideoActionWidget(icon: Icons.play_arrow, title: 'Play')
                  ],)
              ],
            ),
          ),
        )
      ],
    );
  }
}
class VideoActionWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActionWidget({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      child: Column(
        children: [
          Icon(icon,color: Colors.white,size: 30,),
          Text(title,style: const TextStyle(
            color: kwhiteColor,
            fontSize: 16
          ),)
           
        ],
      ),
    );
  }
}