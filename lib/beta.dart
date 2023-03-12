import 'package:flutter/material.dart';
import 'main.dart';

class PageBeta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beta'),
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
                    text: 'The beta value is a metric used by investors to analyze the volatility of a stock. It is calculated by a complex equation and is a good tool for traders to evaluate the risk of their investments.\n' 
                  ),
                  TextSpan(
                    text: '\nExample:\n',
                    style: TextStyle(decoration: TextDecoration.underline, decorationColor: Colors.green),
                  ),
                  TextSpan(
                    text: 'Not applicable due to its complex calculation.\n' 
                  ),
                  TextSpan(
                    text: '\nUse:\n',
                    style: TextStyle(decoration: TextDecoration.underline, decorationColor: Colors.green),
                  ),
                  TextSpan(
                    text: 'The Beta value is best used to judge the risk and volatility of stock. A Beta greater than 1.00 implies that a stock is more volatile, whereas a Beta below 1.00 shows that the stock is less volatile. Additionally, a Beta of exactly 1.00 could be understood as meaning that a stock would increase or decrease at the same rate as a broader index such as the S&P 500. A Beta value above 1.00 is not necessarily a bad thing, it just means that an investment is volatile and has potential for large increases or decreases. If supplemented with adequate research and analysis, investment into stocks with Beta values over 1.00 could produce large earnings that could greatly increase one’s portfolio. On the other hand, stocks with Beta values below 1.00 could be thought of as “safer picks” that could potentially generate small, consistent earnings.'
                  ),
                ],
              )),
            )
            ),
      ),
    );
  }
}