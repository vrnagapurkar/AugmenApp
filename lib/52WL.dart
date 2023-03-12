import 'package:flutter/material.dart';
import 'main.dart';

class Page52WL extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('52 Week Low'),
      ),
      body: SingleChildScrollView(
        child: Container(
            margin: const EdgeInsets.only(top: 0),
            height: 820,
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
                    text: 'A stock’s 52 W Low is its lowest trading price within a year. It is useful for traders as a measure of support, or minimum trading level, and influences their decisions to buy or short a stock. Moreover, traders focused on technical analysis consider the area near the 52 W Low to be a region of high volatility and risk.\n' 
                  ),
                  TextSpan(
                    text: '\nExample:\n',
                    style: TextStyle(decoration: TextDecoration.underline, decorationColor: Colors.green),
                  ),
                  TextSpan(
                    text: 'If Augmen Investment Services (AIS) trades for \$67.37 on September 9, 2021; \$83.40 on January 17, 2022; \$58.93 on April 27, 2022; and \$65.67 on August 19, 2022 – then its 52 W Low would be \$58.93.\n' 
                  ),
                  TextSpan(
                    text: '\nUse:\n',
                    style: TextStyle(decoration: TextDecoration.underline, decorationColor: Colors.green),
                  ),
                  TextSpan(
                    text: 'Traders focused on technical analysis consider the 52 W Low to be an important measure of support. Specifically, there is a belief among traders that one should purchase a stock when its value reaches close to its 52 W Low and should execute a short once the stock’s value dips below the previous 52 W Low. The rationale behind this is that a 52 W low is a very rare event, and therefore the stock will most likely reverse its course before overcoming this value. On the other hand, if a stock breaks beneath its 52 W Low, there is a belief that there must be some momentum driving those gains and further decreases in price are likely. Like the 52 W High, this rationale should be taken with caution and should be used in addition to other methods of analyzing a stock’s value.'
                  ),
                ],
              )),
            )
            ),
      ),
    );
  }
}