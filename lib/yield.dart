import 'package:flutter/material.dart';
import 'main.dart';

class PageYield extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yield'),
      ),
      body: SingleChildScrollView(
        child: Container(
            margin: const EdgeInsets.only(top: 0),
            height: 1200,
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
                    text: 'Yield is the relationship between a company’s yearly dividends and its share price. It is the percent of a company’s stock price that equals its yearly dividend for one share. A dividend is a payment that a company will give out for being a shareholder, and its purpose is to share the profits from the year with those who invested in the company.\n' 
                  ),
                  TextSpan(
                    text: '\nExample:\n',
                    style: TextStyle(decoration: TextDecoration.underline, decorationColor: Colors.green),
                  ),
                  TextSpan(
                    text: 'If Augmen Investment Services (AIS) had a yearly dividend of \$4.00 and had a share price of \$200.00, its yield % would be found by dividing 4.00 by 200.00 and multiplying that number by 100. Thus, the yield % would equal 0.02 times 100, which would give it a value of 2.00%.\n' 
                  ),
                  TextSpan(
                    text: '\nUse:\n',
                    style: TextStyle(decoration: TextDecoration.underline, decorationColor: Colors.green),
                  ),
                  TextSpan(
                    text: 'A company’s yield is one factor in the decision to invest in a stock. Specifically, investors hoping to capture small, yet consistent returns would be drawn to stocks with a high dividend percentage as they would be guaranteeing themselves some money back each year. Thus, traders hoping to consistently reinvest their earnings and have a constant source of income would be drawn to stocks with a high dividend yield. On the other hand, traders focused on investing in stocks with huge growth potential might be cautious of investing in stocks with high dividend yield, as those companies don’t reinvest as much of their profits and fail to fully maximize their growth. Both a high yield and a low yield are great, it just depends on the investor and what goals they are hoping to achieve.'
                  ),
                ],
              )),
            )
            ),
      ),
    );
  }
}