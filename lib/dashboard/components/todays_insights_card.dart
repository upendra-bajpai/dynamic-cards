import 'package:flutter/material.dart';

import '../../utils/card_custom.dart';
import '../../utils/consts.dart';
import '../../utils/fade_text_view.dart';
import 'action_strip.dart';

class TodaysInsightsCard extends StatelessWidget {
  final String date;
  final String title;
  final String content;

  const TodaysInsightsCard({super.key, required this.title, required this.content,required this.date});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      color: cardsMainBack,
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: FadeTextAnimation(
                text: date,
                style: const TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w400,
                  color: textColorFaded,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Center(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Center(
              child: FadeTextAnimation(
                text:content,
                style: const TextStyle(fontSize: 20.0,color: textColor,fontWeight: FontWeight.w600),
              ),
            ),
           
             Expanded(child: Container()), 
            ActionStrip(),
          ],
        ),
      ),
    );
  }
}
