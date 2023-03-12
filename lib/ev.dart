import 'package:flutter/material.dart';
import 'main.dart';

class PageEV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EV'),
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
                    text: 'Enterprise Value is the measure of a company’s worth, including its outstanding debts. It is found by adding the company’s Market Capitalization to its net debt and subtracting the value of its cash reserves. It is also the potential price that the company would be purchased for, as it contains both the company’s value and the liabilities it needs to pay off.\n' 
                  ),
                  TextSpan(
                    text: '\nExample:\n',
                    style: TextStyle(decoration: TextDecoration.underline, decorationColor: Colors.green),
                  ),
                  TextSpan(
                    text: 'If Augment Investment Services (AIS) were to have earnings of \$100.00, debt of \$50.00, and cash reserves totaling \$20.00, its enterprise value would be found by adding \$100.00 to \$50.00 and subtracting \$20.00, which would make its EBITDA have a value of \$130.00.\n' 
                  ),
                  TextSpan(
                    text: '\nUse:\n',
                    style: TextStyle(decoration: TextDecoration.underline, decorationColor: Colors.green),
                  ),
                  TextSpan(
                    text: 'EV/EBITDA: the Enterprise Value to EBITDA ratio compares a company’s worth to its earnings. It is a good evaluation of whether a company is properly, over, or undervalued. Typically, the lower the EV/EBITDA ratio the better, and a value of 10 or below is generally considered good and a signal of a potential investment.'
                  ),
                ],
              )),
            )
            ),
      ),
    );
  }
}