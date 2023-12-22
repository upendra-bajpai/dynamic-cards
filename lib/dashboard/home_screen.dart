import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety_flutter3/flutter_swiper_null_safety_flutter3.dart';
import 'package:melooha/dashboard/components/questions_chatbot.dart';
import 'package:melooha/utils/expanding_dots.dart';
import '../utils/consts.dart';
import 'components/cosmic_daily_forecast_card.dart';
import 'components/know_yourself_personality.dart';
import 'components/todays_insights_card.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final SwiperController _pageController = SwiperController();
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
/*     _pageController.addListener(() {
      int next = _pageController.page!.round();
      if (_currentPage != next) {
        setState(() {
          _currentPage = next;
        });
      }
    }); */
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final indicatorWidth = 8.0; // adjust this value as needed
    final itemWidth = screenWidth - indicatorWidth;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic Cards'),
      ),
      body: Stack(
        alignment: Alignment.centerRight,
        children: <Widget>[
          Swiper(
            viewportFraction: 0.8,
            itemCount: cardData.length,
            autoplay: false,
            itemWidth: itemWidth,
            layout: SwiperLayout.TINDER,
            scrollDirection: Axis.vertical,
            controller: _pageController,
            itemBuilder: (BuildContext context, int index) {
              // You can add a switch case to handle different types of cards
              switch (cardData[index]['type']) {
                case 'TodaysInsightsCard':
                  return TodaysInsightsCard(
                    title: cardData[index]['title'],
                    content: cardData[index]['content'],
                    date: cardData[index]['date'],
                  );
                case 'CosmicDailyForecastCard':
                  return CosmicDailyForecastCard(
                    choghadiyaTime: cardData[index]['choghadiyaTime'],
                    rahuKaalTime: cardData[index]['rahuKaalTime'],
                    luckyColor: cardData[index]['luckyColor'],
                    luckyNumber: cardData[index]['luckyNumber'],
                    choghadiyaMsg: cardData[index]['choghadiyaMsg'],
                    rahuMsg: cardData[index]['rahuMsg'],
                  );
                case 'chatbot':
                  return Chatbot();
                case 'persoanlity':
                  return PersonalityTraits();
                default:
                  return Container(); // Placeholder for other card types
              }
            },
            onIndexChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(cardData.length, (index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 2.0),
                    height: 12.0,
                    width: 12.0,
                    decoration: BoxDecoration(
                      shape: currentIndex == index
                          ? BoxShape.rectangle
                          : BoxShape.circle,
                      color: currentIndex == index ? Colors.blue : Colors.grey,
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // _pageController.dispose();
    super.dispose();
  }
}
