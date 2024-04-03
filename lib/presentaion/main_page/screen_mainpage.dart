import 'package:flutter/material.dart';
import 'package:netflix/core/colours/colors.dart';
import 'package:netflix/presentaion/main_page/widgets/botton_nav.dart';

class ScreenMainPage extends StatelessWidget {
  const ScreenMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(child:Center(child: 
      Text('Main Page')
      ,)
      ),
      bottomNavigationBar:BottomNavwidget() ,
    );
  }
}