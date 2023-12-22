import 'package:flutter/material.dart';
import 'package:melooha/utils/consts.dart';

class ActionStrip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: cardsMainBack,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        children: <Widget>[
          Card(
            color: cardsBack,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8))
            ),
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.thumb_up, color: Colors.white),
                  onPressed: () {
                    print('Like button pressed');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.thumb_down, color: Colors.white),
                  onPressed: () {
                    print('Dislike button pressed');
                  },
                ),
              ],
            ),
          ),
          Spacer(),
          Card(
            color: cardsBack,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8))
            ),
            child: IconButton(
              icon: Icon(Icons.share, color: Colors.white),
              onPressed: () {
                print('Share button pressed');
              },
            ),
          ),
        ],
      ),
    );
  }
}
