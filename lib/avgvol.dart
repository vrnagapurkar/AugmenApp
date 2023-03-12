import 'package:flutter/material.dart';
import 'main.dart';

class PageAvgVolume extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Average Volume'),
      ),
      body: SingleChildScrollView(
        child: Container(
            margin: const EdgeInsets.only(top: 0),
            height: 1200,
            // width: 390,
            child: Padding(
              padding: const EdgeInsetsDirectional.only(top: 10, start: 10, end: 5),
              child: RichText(
                  text: const TextSpan(
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                    color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Overview:\n',
                    style: TextStyle(decoration: TextDecoration.underline, decorationColor: Colors.green)),
                  TextSpan(
                    text: 'A stock’s Avg Vol (Average Volume) indicates, on average, how many shares have been bought or sold throughout a trading day. The average volume is calculated by dividing a stock’s total number of trades over a certain period by however many days were in that timeframe. The average volume is useful through comparison to the daily volume and is a good judge of how impactful a single investor can be on a company’s share price.\n' 
                  ),
                  TextSpan(
                    text: '\nExample:\n',
                    style: TextStyle(decoration: TextDecoration.underline, decorationColor: Colors.green),
                  ),
                  TextSpan(
                    text: 'If Augmen Investment Services (AIS) was traded 50 times on June 1, 45 times on June 2, 110 times on June 3, 20 times on June 4, and 30 times on June 5, its average volume would be found by adding 50 to 45, 110, 20, and 30, and dividing that sum by the number of days, which is 5. Thus, the average volume would be found by dividing 255 by 5, which would produce a value of 51.\n' 
                  ),
                  TextSpan(
                    text: '\nUse:\n',
                    style: TextStyle(decoration: TextDecoration.underline, decorationColor: Colors.green),
                  ),
                  TextSpan(
                    text: 'A stock’s average volume can be used as a good benchmark figure in comparison to the daily volume. Specifically, increases in the daily volume far above the average volume are signals of rising investor demand, and could once again be the determiners of a bullish or bearish pattern. The average volume is such a good benchmark because it is not susceptible to sudden daily increases or decreases of the daily volume, and therefore it maintains a steady value that can be adequately compared against. Moreover, a high average volume can reassure investors that the actions of one trader will not dramatically affect the share price of the stock. Specifically, stocks with low average volumes could be strongly influenced by a major selloff from one investor, whereas companies with high average volumes would be less affected as there are many other investors making their own decisions. Thus, investors looking to minimize risk and take advantage of small, but more consistent returns tend to go with stocks with high average volumes.'
                  ),
                ],
              )),
            )
            ),
      ),
    );
  }
}