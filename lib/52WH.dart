import 'package:flutter/material.dart';
import 'main.dart';

class Page52WH extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('52 Week High'),
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
                    text: 'A stock’s 52 W High is its highest trading price within a year. It is useful for traders as a measure of resistance, or maximum trading level, and influences their decisions to buy or short a stock. Moreover, traders focused on technical analysis consider the area near the 52 W High to be a region of high volatility and risk.\n' 
                  ),
                  TextSpan(
                    text: '\nExample:\n',
                    style: TextStyle(decoration: TextDecoration.underline, decorationColor: Colors.green),
                  ),
                  TextSpan(
                    text: 'If Augmen Investment Services (AIS) trades for \$101.75 on August 1, 2021; \$97.53 on January 1, 2022; \$110.78 on May 13, 2022; and \$102.34 on July 11, 2022 – then its 52 W High would be \$110.78.\n' 
                  ),
                  TextSpan(
                    text: '\nUse:\n',
                    style: TextStyle(decoration: TextDecoration.underline, decorationColor: Colors.green),
                  ),
                  TextSpan(
                    text: 'Traders focused on technical analysis consider the 52 W High to be a strong measure of resistance. Specifically, there is a belief among traders that one should execute a short when a stock reaches close to its 52 W High and should buy a stock once it breaks out and sets a new 52 W High. The rationale behind this is that a 52 W high is a very rare event, and therefore the stock will most likely reverse its course before overcoming this value. On the other hand, if a stock breaks past its 52 W High, there is a belief that there must be some momentum driving those gains and further increases in price are likely. This rationale should be taken with a heavy grain of salt and should be used in addition to other methods of analyzing a stock’s value.'
                  ),
                ],
              )),
            )
            ),
      ),
    );
  }
}