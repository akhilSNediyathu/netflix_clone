import 'package:flutter/material.dart';
import 'package:netflix/core/colours/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentaion/home/widgets/custom_button_widget.dart';
import 'package:netflix/presentaion/widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
    
  });

  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        const SizedBox(width: 50,
        height: 450,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('FEB',style: TextStyle(fontSize: 16,color: kgreyColor),),
            Text('11',style: TextStyle(fontSize: 30,
            letterSpacing: 4,
            fontWeight: FontWeight.bold),),
          ],
        ),
        ),
        SizedBox(
          width: size.width-50,
          height: 500,
          child: const Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(),
              Row(
                //mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                children: [
                  Text('TALL GIRL 2 ',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,letterSpacing: -5),),
                  Spacer(),
                  Row(
                    children: [
                      CustomButtonWidget(icon: Icons.notifications_none , title: 'Remind me',iconsize: 20,textsize:12 ,),
                      kwidth,
                      CustomButtonWidget(icon: Icons.info , title: 'info',iconsize: 20,textsize:12 ,),
                      kwidth
                    ],
                  )
                ],
              ),
              kheight,
             Text('Coming on friday'),
              kheight,
               Text('Tall girl 2',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
               ),),
               kheight,
               Text('Landing the lead in the school musical is a dream come true for jide, until the pressure sends her confidence - and her relationship - into a tailspain.',style: TextStyle(
                color: kgreyColor
               ),
               )
    
            ],
          ),
          
        ),
      ],
    );
  }
}

