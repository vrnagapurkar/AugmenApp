import 'package:flutter/material.dart';
import 'main.dart';

class PageClose extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Close'),
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
                    text: 'A stock’s close is the price that a stock last trades at during a stock exchange’s active hours. The New York Stock Exchange (NYSE) operates from 9:30 AM to 4:00 PM ET every Monday through Friday outside of federal holidays. The close is the price of the last executed trade, and even though it is the price of a stock the night before it doesn’t have to be the price of a stock the following morning. Specifically, after-market trading and a company’s news releases can alter its price throughout the night, and can create the look of a sharp increase or decrease in the stock’s price the following morning.\n' 
                  ),
                  TextSpan(
                    text: '\nExample:\n',
                    style: TextStyle(decoration: TextDecoration.underline, decorationColor: Colors.green),
                  ),
                  TextSpan(
                    text: 'If investor Brandon, the final trader of the day, purchased a share of Augmen Investment Services (AIS) for \$4.37 at 3:59 ET, Augmen’s closing price would be \$4.37.\n' 
                  ),
                  TextSpan(
                    text: '\nUse:\n',
                    style: TextStyle(decoration: TextDecoration.underline, decorationColor: Colors.green),
                  ),
                  TextSpan(
                    text: 'A consistent increase in a company’s close over weeks and months could signal a bullish, or positive, trend that may motivate traders to invest. However, this is to be taken with a grain of salt as there are many different factors that may cause a stock to suddenly reverse its growth and decrease in price.'
                  ),
                ],
              )),
            )
            ),
      ),
    );
  }
}