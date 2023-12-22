import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety_flutter3/flutter_swiper_null_safety_flutter3.dart';

/* void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}
 */

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final SwiperController swiperController = SwiperController();
  
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final indicatorWidth = 8.0; // adjust this value as needed
    final itemWidth = screenWidth - indicatorWidth;
    return Stack(
      children: <Widget>[
        Swiper(
          viewportFraction: 0.8,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Center(
                child: Text('Card ${index + 1}'),
              ),
            );
          },
          itemCount: 5,
          autoplay: false,
          itemWidth: itemWidth,
          layout: SwiperLayout.TINDER,
          scrollDirection: Axis.vertical,
          controller: swiperController,
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
              children: List.generate(5, (index) {
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 2.0),
                  height: 12.0,
                  width: 12.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentIndex == index ? Colors.blue : Colors.grey,
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
