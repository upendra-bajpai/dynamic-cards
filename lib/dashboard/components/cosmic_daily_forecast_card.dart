import 'dart:ffi';

import 'package:flutter/material.dart';

import '../../utils/card_custom.dart';
import '../../utils/consts.dart';
import '../../utils/fade_text_view.dart';
import 'action_strip.dart';

class CosmicDailyForecastCard extends StatelessWidget {
  final String choghadiyaTime;
  final String rahuKaalTime;
  final String luckyColor;
  final String choghadiyaMsg,rahuMsg;
  final int luckyNumber;

  const CosmicDailyForecastCard({
    required this.choghadiyaTime,
    required this.rahuKaalTime,
    required this.luckyColor,
    required this.luckyNumber,
    required this.choghadiyaMsg,
    required this.rahuMsg
  });

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
                text: "Good and Challenging Moments",
                style: const TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400,
                  color: textColorFaded,
                ),
              ),
            ),
            SizedBox(height:20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                   'Your Cosmic Daily Forecast',
                  style: const TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
                ),
              ),
            ),
            SizedBox(height:20),
            CustomCard(
              color: cardsBack,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                       'Choghadiya',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FadeTextAnimation(
                      text: choghadiyaMsg,
                      style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FadeTextAnimation(
                      text: choghadiyaTime,
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Starts  \t\t  Ends',
                      style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              width: double.infinity,
              child: CustomCard(
                color: cardsBack,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                         'Rahu Kaal',
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FadeTextAnimation(
                        text: rahuMsg,
                        style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FadeTextAnimation(
                        text: rahuKaalTime,
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                         'Starts  \t\t  Ends',
                        style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.0),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: luckyCards('Red', 'Lucky Colour', color: Colors.red),
                  ),
                  SizedBox(width: 8), // for spacing between the cards
                  Expanded(
                    child: luckyCards('12', 'Lucky Number'),
                  ),
                ],
              ),
            ),
         SizedBox(height:20),
          ActionStrip()],
        ),
      ),
    );
  }

  Widget luckyCards(String title, String subtitle, {Color color = cardsBack}) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: cardsBack,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 10),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(color: color, shape: BoxShape.circle),
              ),
              SizedBox(width: 5),
              Text(title, style: TextStyle(color: Colors.white, fontSize: 30)),
            ],
          ),
          Text(subtitle, style: TextStyle(color: Colors.grey, fontSize: 15)),
        ],
      ),
    );
  }
}
