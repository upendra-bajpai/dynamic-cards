import 'package:flutter/material.dart';
import 'package:melooha/utils/card_custom.dart';
import 'package:melooha/utils/consts.dart';

class Chatbot extends StatelessWidget {
  Chatbot({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      color: cardsMainBack,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
           const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Center(
              child: Text('Ask Your Questions',
                  style:TextStyle(color: Colors.white70, fontSize: 20)),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text('Pose Your Questions to AI',
                style: TextStyle(color: Colors.white, fontSize: 30)),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Icon(Icons.remove_red_eye,
                    color: Colors.deepPurple, size: 25),
              ),
              const Text('Vaani',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ],
          ),
          const Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text('Here are some suggestions for you.',
                style: TextStyle(color: Colors.white70, fontSize: 20)),
          ),
          const SizedBox(height: 20),
          ...questions.map((question) => questionBubble(question)).toList(),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Ask your own Question to Vaani',
                    style: TextStyle(color: Colors.white70,fontSize:20)),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(16.0),
                  primary: cardsMainBack,
                  minimumSize:Size(double.infinity,60),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10.0), // Adjust the radius as needed
                    side: BorderSide(
                      width: 2,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  final List<String> questions = [
    'How will be my dad’s health for the coming three months?',
    'Will I get married this year?',
    'Will I win the upcoming football match?',
    'How will be my dad’s health for the coming three months?',
    'How will be my coming days?',
  ];

  Widget questionBubble(String text) {
    return CustomCard(
      color: cardsBack,
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.all(10),
        child:
            Text(text, style: TextStyle(color: Colors.white70, fontSize: 20)),
      ),
    );
  }
}
