import 'package:flutter/material.dart';
import 'main.dart';

class PageEBITDA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EBITDA'),
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
                    text: 'EBITDA is the measure of a company’s earnings before factoring in interest, taxes, depreciation (decreases in value of an asset), and amortization (installments of paying off debt). It allows for easy comparison between companies to judge their profitability without factoring in values like debt that may vary between businesses.\n' 
                  ),
                  TextSpan(
                    text: '\nExample:\n',
                    style: TextStyle(decoration: TextDecoration.underline, decorationColor: Colors.green),
                  ),
                  TextSpan(
                    text: 'If Augmen Investment Services (AIS) had earnings of \$100.00, interest totaling \$10.00, taxes of \$30.00, depreciation of \$20.00, and amortization of \$10.00, its EBITDA would be found by adding all of those values together. Thus, the EBITDA would have a value of \$170.00.\n' 
                  ),
                  TextSpan(
                    text: '\nUse:\n',
                    style: TextStyle(decoration: TextDecoration.underline, decorationColor: Colors.green),
                  ),
                  TextSpan(
                    text: 'EBITDA Margin: EBITDA/Revenue\nAdditionally, comparing EBITDA to a company’s revenue can also paint a picture of a firm’s overall financial health. Specifically, an EBITDA margin of 10% or greater is considered good, and most companies in the S&P 500 have this percentage.'
                  ),
                ],
              )),
            )
            ),
      ),
    );
  }
}