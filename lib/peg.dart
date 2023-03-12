import 'package:flutter/material.dart';
import 'main.dart';

class PagePEG extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PEG'),
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
                    text: 'The PEG ratio shows the relationship between a company’s P/E and its earnings growth. It is found by dividing the P/E ratio by the earnings growth rate over a 1,3, or 5-year period. It is best used to determine if a stock is overvalued or undervalued, and helps investors determine if a stock is fairly priced.\n' 
                  ),
                  TextSpan(
                    text: '\nExample:\n',
                    style: TextStyle(decoration: TextDecoration.underline, decorationColor: Colors.green),
                  ),
                  TextSpan(
                    text: 'If Augmen Investment Services (AIS) has a P/E ratio of 25 and a 5-year earnings growth rate of 12.50%, its PEG ratio would be found by dividing 25 by 12.50, which would make it have a value of 2.00.\n' 
                  ),
                  TextSpan(
                    text: '\nUse:\n',
                    style: TextStyle(decoration: TextDecoration.underline, decorationColor: Colors.green),
                  ),
                  TextSpan(
                    text: 'Once again, the PEG ratio helps determine if a stock is properly, over, or under-valued. Typically, a PEG ratio of below 1.00 is considered positive, whereas a PEG ratio above 1.00 is considered negative. A PEG ratio below 1.00 communicates that a stock may be undervalued and would therefore be a good investment as the market catches up and the share price rises in value.'
                  ),
                ],
              )),
            )
            ),
      ),
    );
  }
}