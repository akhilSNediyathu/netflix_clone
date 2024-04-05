
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


import 'package:netflix/core/constants.dart';
import 'package:netflix/presentaion/home/widgets/background_card.dart';

import 'package:netflix/presentaion/home/widgets/number_title_card.dart';


import 'package:netflix/presentaion/widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
            valueListenable: scrollNotifier,
            builder: (BuildContext context, index, _) {
              return NotificationListener<UserScrollNotification>(
                onNotification: ((notification) {
                  final ScrollDirection direction = notification.direction;
                  if (direction == ScrollDirection.reverse) {
                    scrollNotifier.value = false;
                  } else if (direction == ScrollDirection.forward) {
                    scrollNotifier.value = true;
                  }
                  return true;
                }),
                child: Stack(
                  children: [
                    ListView(
                      children: const [
                        BackgroundCard(),
                        MainTitleCard(
                          title: 'Released in the past year',
                        ),
                        kheight,
                        MainTitleCard(
                          title: 'Trending Now',
                        ),
                        kheight,
                        NumberTitleCard(),
                        kheight,
                        MainTitleCard(
                          title: 'Tensed Dramas',
                        ),
                        kheight,
                        MainTitleCard(
                          title: 'South Indian Dramas',
                        ),
                      ],
                    ),
                    scrollNotifier.value == true
                        ? AnimatedContainer(
                          duration:const Duration(milliseconds: 1000),
                          child: Container(
                              width: double.infinity,
                              height: 80,
                              color: Colors.black.withOpacity(0.5),
                              child: Column(
                                children: [
                                  Row(
                                   
                                    children: [
                                      Image.network('https://upload.wikimedia.org/wikipedia/commons/f/ff/Netflix-new-icon.png',width: 60,height: 60,fit: BoxFit.cover,),
                                      const Spacer(),
                                 const Icon(Icons.cast,color: Colors.white,size: 30,),
                                  kwidth,
                                  Container(
                                    width: 30,
                                    height: 30,
                                    color: Colors.blue,
                                  ),kwidth
                          
                          
                          
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('TV Shows',style: kHomeTitleText),Text('Movies',style: kHomeTitleText,),Text('catagories',style: kHomeTitleText,)
                                    ],
                                  )
                                ],
                              ),
                              ),
                        )
                        : kheight,
                  ],
                ),
              );
            }));
  }
}
