import 'package:flutter/material.dart';
import 'main.dart';

class PagePE extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('P/E'),
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
                    text: 'The P/E ratio is the ratio between a company’s stock price and its EPS, or earnings per share. It is useful for analyzing the value of a company, as it shows how much investors are willing to pay per dollar of earnings. There are two versions of the P/E ratio, the trailing P/E and the forward P/E. The trailing, or TTM (Trailing Twelve Months) P/E, is calculated by dividing a company’s current share price by the average EPS of the previous 4 quarters. On the other hand, the forward P/E is found by dividing a company’s current share price by the predicted EPS over the next 4 quarters. Typically, the P/E ratio found on a stock chart is the TTM P/E as it uses concrete data.\n' 
                  ),
                  TextSpan(
                    text: '\nExample:\n',
                    style: TextStyle(decoration: TextDecoration.underline, decorationColor: Colors.green),
                  ),
                  TextSpan(
                    text: 'If Augmen Investment Services (AIS) has a share price of \$50.00 and an Earnings Per Share (EPS) of 2.50, the P/E ratio would be found by dividing \$50.00 by 2.50, which would make its value 20.00.\n' 
                  ),
                  TextSpan(
                    text: '\nUse:\n',
                    style: TextStyle(decoration: TextDecoration.underline, decorationColor: Colors.green),
                  ),
                  TextSpan(
                    text: 'The P/E ratio is best used to understand investor expectations and judge how well a stock is valued. Specifically, a high P/E ratio may show that a stock is overvalued due to the high share price compared to the company’s earnings. Because of this, investors may be wary about investing in the stock because of the chance that the market corrects itself and the share price falls. Additionally, a high P/E ratio may signal that investors are expecting dramatic growth from a company and are willing to pay more now for those shares. On the other hand, a low P/E ratio may show that a company is undervalued, and its share price will increase to match its higher earnings. Finally, a low P/E ratio may also mean that investors are not willing to pay a lot of money for a stock that they believe will decline in value. Generally speaking, if two companies have similar situations and have similar growth projections, the company with a lower P/E ratio would be considered the better investment. However, it is also important to look at a company’s current events to judge why the P/E ratio has the value it does.'
                  ),
                ],
              )),
            )
            ),
      ),
    );
  }
}