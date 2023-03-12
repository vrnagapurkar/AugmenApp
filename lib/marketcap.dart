import 'package:flutter/material.dart';
import 'main.dart';

class PageMktCap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Market Cap'),
      ),
      body: SingleChildScrollView(
        child: Container(
            margin: const EdgeInsets.only(top: 0),
            height: 1100,
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
                    text: 'A company’s Mkt Cap (Market Capitalization) is its total monetary value calculated by multiplying the number of its issued shares by its current stock price. A company’s Market Capitalization can be one of three main categories, which are large-cap, mid-cap, and small-cap. Companies that are large-cap typically have a Market Capitalization of over 10 billion dollars, whereas mid-cap companies typically have a valuation of between 2 billion to 10 billion dollars. Finally, small-cap companies have a market capitalization of between 300 million to 2 billion dollars.\n' 
                  ),
                  TextSpan(
                    text: '\nExample:\n',
                    style: TextStyle(decoration: TextDecoration.underline, decorationColor: Colors.green),
                  ),
                  TextSpan(
                    text: 'If Augmen Investment Services (AIS) has 100 shares of issued stock and a share price of \$33.00, its market capitalization would be found by multiplying 100 by \$33.00, leaving a value of \$3,300.00.\n' 
                  ),
                  TextSpan(
                    text: '\nUse:\n',
                    style: TextStyle(decoration: TextDecoration.underline, decorationColor: Colors.green),
                  ),
                  TextSpan(
                    text: 'A company’s market capitalization can give a good overview of the risk and potential earnings associated with investing in it. Specifically, large-cap stocks are typically established companies with solid earnings that pay dividends. As a result, they are usually associated with being a “safe” investment that would provide small but consistent returns. Mid-cap stocks can also be solid investments, but typically they are still emerging companies that have a degree of risk associated with them. As a result, they are more volatile stocks but have the potential for large returns. Finally, small-cap stocks are typically young companies that still have the potential for huge growth or failure. Thus, they are considered risky investments that could generate enormous returns but could also rapidly decrease in value.'
                  ),
                ],
              )),
            )
            ),
      ),
    );
  }
}