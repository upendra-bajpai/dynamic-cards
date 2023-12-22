import 'package:flutter/material.dart';
import 'package:melooha/utils/card_custom.dart';
import 'package:melooha/utils/consts.dart';

/* class PersonalityTraits extends StatelessWidget {
  const PersonalityTraits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text('Know Yourself, Based on Your Personality Traits', style: TextStyle(color: Colors.white, fontSize: 20)),
              const SizedBox(height: 20),
              Card(
                color: const Color(0xFF1A1A2E),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Stack(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text('Emotional Intelligence', style: TextStyle(color: Colors.white, fontSize: 25)),
                          const SizedBox(height: 10),
                          const Text('Your emotional intelligence is remarkable. Your ability to understand, empathize, and connect with others on such a profound level is truly exceptional.', style: TextStyle(color: Colors.white, fontSize: 15)),
                        ],
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        left: 0,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Unlock all 23 Personality Traits', style: TextStyle(color: Colors.white)),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.pink.withOpacity(0.5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
} */

import 'package:flutter/material.dart';

class PersonalityTraits extends StatelessWidget {
  const PersonalityTraits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      color: cardsBack,
      margin: const EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: const Text('Know Your Qualities',
                      style: TextStyle(color: Colors.white70, fontSize: 17)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: const Text(
                      'Know Yourself, Based on Your Personality Traits',
                      style: TextStyle(color: Colors.white, fontSize: 25)),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Center(
                          child: const Icon(
                        Icons.add_reaction_rounded,
                        color: Colors.deepPurple,
                        size: 190,
                      )),
                      const Text('Emotional Intelligence',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
                      const Text(
                          'Your emotional intelligence is remarkable. Your ability to understand, empathize, and connect with others on such a profound level is truly exceptional.',
                          style: TextStyle(
                              color: Colors.white70, fontSize: 25)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned.fill(
            bottom: 0,
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    cardsBack.withOpacity(0.2),
                    cardsBack,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                  'Unlock all 23 Personality Traits',
                  style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                primary: Colors.pink.withOpacity(0.5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
