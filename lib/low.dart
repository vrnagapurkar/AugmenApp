import 'package:flutter/material.dart';
import 'main.dart';

class PageLow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Low'),
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
                    text: 'A stock’s low is its smallest trading price within the active hours of a stock exchange. It is useful for day traders as a measure of support, or minimum trading level, and influences their decisions to buy or short a stock. Specifically, some day traders will purchase a stock when it approaches close to the daily low, as the belief is that the stock will not pass below that value. Granted, this is a very risky method of investing as there are many factors that could push a stock’s price below its daily high.\n' 
                  ),
                  TextSpan(
                    text: '\nExample:\n',
                    style: TextStyle(decoration: TextDecoration.underline, decorationColor: Colors.green),
                  ),
                  TextSpan(
                    text: 'If Augmen Investment Services (AIS) opens at a price of \$27.00, at noon is at \$24.00 and closes at \$35.00, the low for the day is \$24.00.\n' 
                  ),
                  TextSpan(
                    text: '\nUse:\n',
                    style: TextStyle(decoration: TextDecoration.underline, decorationColor: Colors.green),
                  ),
                  TextSpan(
                    text: 'Similar to the daily high, a stock’s low gives information about trends. Like the high and the opening price, a consistently increasing daily high may indicate a bullish pattern that could signal a good time to invest. Again, this is to be taken with caution as there are many factors to consider when investing in a stock, and a bullish pattern is not solely enough to determine whether a stock is a good buy.'
                  ),
                ],
              )),
            )
            ),
      ),
    );
  }
}