import 'package:flutter/material.dart';
import 'main.dart';

class PageChangePer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change %'),
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
                    text: 'Change % is the percent difference between a stock’s current price and the previous business day’s close. It is calculated by dividing the difference between the current price and the previous day’s close by the previous day’s close, and multiplying that number by 100. The change % can be negative, and that occurs when the current price is less than the previous day’s close.\n' 
                  ),
                  TextSpan(
                    text: '\nExample:\n',
                    style: TextStyle(decoration: TextDecoration.underline, decorationColor: Colors.green),
                  ),
                  TextSpan(
                    text: 'If Augmen Investment Services (AIS) has a current share price of \$24.37 and its previous day’s close was \$23.46, its change would first be found by finding the difference between \$24.37 and \$23.46, which is \$0.91. Then, \$0.91 would be divided by \$23.46, producing a value of 0.0388. Finally, 0.0388 would be multiplied by 100, giving AIS a change % of 3.88%.\n' 
                  ),
                  TextSpan(
                    text: '\nUse:\n',
                    style: TextStyle(decoration: TextDecoration.underline, decorationColor: Colors.green),
                  ),
                  TextSpan(
                    text: 'Similar to a stock’s change, a stock’s change % can be used to inform the investor of short-term gains or losses that may be affecting a stock. Specifically, an investor who sees a large change % would be prompted to investigate the current events concerning that company to determine if more gains are likely. Moreover, the change % can be used to benchmark the gains of companies with wildly different share prices. For example, if one was comparing the daily gains of Company A with a close of \$15.00 and Company B with a close of \$2,000.00, a change of \$10.00 would mean vastly different things. Therefore, the change % can be used to compare different companies and determine which one has comparatively larger day-over-day gains. However, it is worth noting that a larger change % is not solely enough to determine whether a stock is a good buy, as there are many factors affecting the stock’s share price.'
                  ),
                ],
              )),
            )
            ),
      ),
    );
  }
}