import 'package:flutter/material.dart';
import 'main.dart';

class PageVolume extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Volume'),
      ),
      body: SingleChildScrollView(
        child: Container(
            margin: const EdgeInsets.only(top: 0),
            height: 1000,
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
                    text: 'A stock’s vol (volume) indicates how many shares of the stock have been bought and sold throughout the day. Although the number means little on its own, the trends of a stock’s volume can paint a picture of the interest in the company and how bullish or bearish its movement is.\n' 
                  ),
                  TextSpan(
                    text: '\nExample:\n',
                    style: TextStyle(decoration: TextDecoration.underline, decorationColor: Colors.green),
                  ),
                  TextSpan(
                    text: 'If Augmen Investment Services (AIS) was bought 147 times throughout the day and was sold 350 times throughout the day, its volume would be found by adding 147 to 350, giving it a value of 497.\n' 
                  ),
                  TextSpan(
                    text: '\nUse:\n',
                    style: TextStyle(decoration: TextDecoration.underline, decorationColor: Colors.green),
                  ),
                  TextSpan(
                    text: 'A stock’s volume can be best used to verify that a stock’s upward or downward movement is reliable and backed up by investor demand. Specifically, if a stock’s share price is rising and its volume is increasing from day to day, the stock’s movement could be considered bullish as increased investor demand would continue pushing the price up. As a result, investors using this strategy would purchase the stock. On the other hand, if the stock price was increasing but the volume was not, the lack of investor demand could cause the share price to reverse its course. This would make purchasing the stock not worthwhile for the investor. Similarly, if the share price was decreasing and volume was increasing, one could consider this to be a bearish pattern that would imply that share prices would continue to fall. Thus, investors using this strategy would place a short on the stock. However, it is important to understand that this pattern is not a surefire indicator that a stock will increase or decrease in value, and it is thus important to conduct other analysis to determine an appropriate investment strategy.'
                  ),
                ],
              )),
            )
            ),
      ),
    );
  }
}