import 'package:flutter/material.dart';
import 'main.dart';

class PageEPS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EPS'),
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
                    text: 'A company’s EPS, or earnings per share, showcases its profitability on a per share basis. It is calculated by dividing a company’s profit by the number of shares it is composed of.\n' 
                  ),
                  TextSpan(
                    text: '\nExample:\n',
                    style: TextStyle(decoration: TextDecoration.underline, decorationColor: Colors.green),
                  ),
                  TextSpan(
                    text: 'If Augmen Investment Services (AIS) had earnings of \$100.00 and was composed of 50 shares, its EPS would be found by dividing \$100.00 by 50, which would make its EPS 2.\n' 
                  ),
                  TextSpan(
                    text: '\nUse:\n',
                    style: TextStyle(decoration: TextDecoration.underline, decorationColor: Colors.green),
                  ),
                  TextSpan(
                    text: 'Typically, the higher the EPS the better. However, there is no set value that deems that a company is a “good investment.” Rather, a consistent upward growth of the EPS and a higher value compared to other companies in the same sector showcases that that the company may be a good pick. For example, if company A’s EPS is 15 and company B’s EPS is 9, company A could be considered a better investment. Moreover, if company C’s EPS growth rate is on average 20% per year, it could be considered a better investment compared to company D that has an EPS growth rate of only 8%.'
                  ),
                ],
              )),
            )
            ),
      ),
    );
  }
}