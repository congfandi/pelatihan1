import 'package:flutter/material.dart';
import 'package:pelatihan1/food_app/configs/theme/app_font.dart';

class TitleDashboard extends StatelessWidget {
  const TitleDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("HELLO,Yahya",style: AppFont.h1,),
            Text("What do you want to eat?",style: AppFont.normalMedium,),
          ],
        ),
      ),
    );
  }
}
