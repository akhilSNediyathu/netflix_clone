
import 'package:flutter/material.dart';

import 'package:netflix/core/colours/colors.dart';
import 'package:netflix/core/constants.dart';


import 'package:netflix/presentaion/new_and_hot/widgets/coming_soon_widget.dart';
import 'package:netflix/presentaion/new_and_hot/widgets/everyones_watching_widget.dart';




class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
       appBar: PreferredSize(preferredSize: const Size.fromHeight(80),child: AppBar(
        title:  const Text('New & Hot',style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: kwhiteColor),),
        actions: [ const Icon(Icons.cast,color: Colors.white,size: 30,),
          kwidth,
          Container(
            width: 30,
            height: 30,
            color: Colors.blue,
          ),kwidth],
          bottom:  TabBar(
            isScrollable: true,
            dividerColor: Colors.transparent,
            labelColor: kblackColor,
            labelStyle: const TextStyle(fontSize: 16,fontWeight:FontWeight.bold ),
            unselectedLabelColor: kwhiteColor,
            indicator: BoxDecoration(color: kwhiteColor,borderRadius:kradius30 ),
            tabs: const [
            Tab(text: '🍿Coming soon',),
            Tab(text: '👀 Everyone,s Watching',)
          ]),
       )
        ),
        body: TabBarView(children: [
          _buildComingSoon(),
          _buildEveryoneWatching(),
        ]),
      ),
    );
  }
 Widget _buildComingSoon(){
  
return ListView.builder(
  itemCount: 10,
  itemBuilder: (BuildContext context, index) {
  return const ComingSoonWidget();
});
  }
 Widget _buildEveryoneWatching(){
  return ListView.builder(
    itemCount: 10,
    itemBuilder: (BuildContext context, index) =>const EveryOnesWatching()) ;
  }
}



