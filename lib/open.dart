import 'dart:ui';

import 'package:flutter/material.dart';
import 'main.dart';

class PageOpen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Open'),
      ),
      body: SingleChildScrollView(
        child: Container(
            margin: const EdgeInsets.only(top: 0),
            height: 800,
            // width: 390,
            child: Padding(
              padding: const EdgeInsetsDirectional.only(top: 10, start: 10),
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
                    text: 'A stock’s open is the price that a stock first ' 
                    'trades at when the stock exchange opens. The New York'
                    ' Stock Exchange (NYSE) operates from 9:30 AM to 4:00 PM'
                    ' ET every Monday through Friday outside of federal holidays.'
                    ' Even though a stock can close at a certain price the night '
                    'before, the open price can be very different the next morning.'
                    ' This is because of after-market trades and news that can seriously'
                    ' affect the price of the stock. Specifically, traders are able to'
                    ' execute orders prior to the opening of the NYSE, which may drive'
                    ' the price of the stock up or down. Moreover, the release of company '
                    'news such as earnings or user growth may lead to a change in the'
                    ' price of the stock.\n' 
                  ),
                  TextSpan(
                    text: '\nExample:\n',
                    style: TextStyle(decoration: TextDecoration.underline, decorationColor: Colors.green),
                  ),
                  TextSpan(
                    text: 'If Augmen Investment Services (AIS) issues a press '
                    'release at 5 P.M. showing a huge fall in user growth, then'
                    ' the opening price may fall dramatically from the closing '
                    'price due to fallen trust and confidence in the company.\n' 
                  ),
                  TextSpan(
                    text: '\nUse:\n',
                    style: TextStyle(decoration: TextDecoration.underline, decorationColor: Colors.green),
                  ),
                  TextSpan(
                    text: 'A consistent increase in a company’s opening price over weeks and months could signal a bullish, or positive, trend that may motivate traders to invest. However, this is to be taken with a grain of salt as there are many different factors that may cause a stock to suddenly reverse its growth and decrease in price.' 
                  ),
                ],
              )),
            )
            ),
      ),
    );
  }
}
