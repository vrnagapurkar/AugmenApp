import 'package:flutter/material.dart';
import 'main.dart';

class PageHigh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('High'),
      ),
      body: SingleChildScrollView(
        child: Container(
            margin: const EdgeInsets.only(top: 0),
            height: 800,
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
                    text: 'A stock’s high is its greatest trading price within the active hours of a stock exchange. It is useful for day traders as a measure of resistance, or maximum trading level, and influences their decisions to buy or short a stock. Specifically, some day traders will short a stock when it approaches close to the daily high, as the belief is that the stock will not pass above that value. Granted, this is a very risky method of investing as there are many factors that could push a stock’s price above its daily high.\n' 
                  ),
                  TextSpan(
                    text: '\nExample:\n',
                    style: TextStyle(decoration: TextDecoration.underline, decorationColor: Colors.green),
                  ),
                  TextSpan(
                    text: 'If Augmen Investment Services (AIS) opens at a price of \$53.00, at noon is at \$56.00 and closes at \$49.00, the high for the day is \$56.00.\n' 
                  ),
                  TextSpan(
                    text: '\nUse:\n',
                    style: TextStyle(decoration: TextDecoration.underline, decorationColor: Colors.green),
                  ),
                  TextSpan(
                    text: 'Although it is a simpler topic, a stock’s high still gives information about trends. Like the opening price, a consistently increasing daily high may indicate a bullish pattern that could signal a good time to invest. Similarly, this should be taken with a grain of salt as there are many other factors to consider when evaluating whether one should invest in a certain stock.'
                  ),
                ],
              )),
            )
            ),
      ),
    );
  }
}