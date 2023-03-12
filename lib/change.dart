import 'package:flutter/material.dart';
import 'main.dart';

class PageChange extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change'),
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
                    text: 'Change is the difference between a stock’s current price and its value at the previous business day’s close. It is calculated by subtracting the stock’s previous close from its current value, and it can be expressed as a positive or negative value. Specifically, if the stock’s current value is less than the previous day’s close, the stock’s change would be a negative number.\n' 
                  ),
                  TextSpan(
                    text: '\nExample:\n',
                    style: TextStyle(decoration: TextDecoration.underline, decorationColor: Colors.green),
                  ),
                  TextSpan(
                    text: 'If Augmen Investment Services (AIS) has a current share price of \$24.37 and its previous day’s close was \$23.46, its change would be found by subtracting \$23.46 from \$24.37, giving it a value of \$0.91.\n' 
                  ),
                  TextSpan(
                    text: '\nUse:\n',
                    style: TextStyle(decoration: TextDecoration.underline, decorationColor: Colors.green),
                  ),
                  TextSpan(
                    text: 'A stock’s change is best used to inform the investor of short-term gains or losses that may be affecting a stock. Specifically, an investor who sees a large change would be prompted to investigate the current events concerning that company to determine if more gains are likely. Additionally, a consistent, positive change over the course of days or weeks may indicate a bullish pattern that could signal a good time to invest. However, this is to be taken with caution as there are many factors that influence a stock’s price, and a bullish pattern is not solely enough to determine whether a stock is a good buy.'
                  ),
                ],
              )),
            )
            ),
      ),
    );
  }
}