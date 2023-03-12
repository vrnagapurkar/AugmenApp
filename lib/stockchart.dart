import 'package:flutter/material.dart';
import 'main.dart';

class PageChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      backgroundColor: const Color(0xFF02254D),
      appBar: AppBar(
        title: const Text('Stock Chart'),
      ),
      body: SingleChildScrollView(
        child: Container(
        height: 1200,
        // width: 390,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 0),
              child: Padding(
                padding: const EdgeInsetsDirectional.only(top: 0, start: 1),
                child: Image.asset('assets/Chart2.0.png',
                width: 1200,
                ),
              )),

            const Padding(
              padding:  EdgeInsetsDirectional.only(top: 10, start: 10, end: 10),
              child: Text('Resistance:\n',
            style: TextStyle(decoration: TextDecoration.underline, decorationColor: Colors.green, fontWeight: FontWeight.normal, fontSize: 18, color: Colors.white),
            )),
            
            const Padding(
            padding: EdgeInsetsDirectional.only(start:10, end:10),
            child: Text('Resistance is a stock’s price that is considered to be a maximum trading level. Specifically, technical focused investors consider the resistance value to be the point that a stock typically reverses its course. In other words, if a stock is increasing in value it will begin to decrease in price around this point. However, if a stock does break past its resistance level, technical focused investors believe there is a strong momentum and external force driving that increase that will continue to push the stock price up. The resistance value can be the daily high for day traders or the 52W High for long term focused investors.',
            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18, color: Colors.white),
            textAlign: TextAlign.center,
            )),
            
            const Padding(
            padding: EdgeInsetsDirectional.only(start:10, end:10),
            child: Text('\nSupport:\n',
            style: TextStyle(decoration: TextDecoration.underline, decorationColor: Colors.green, fontWeight: FontWeight.normal, fontSize: 18, color: Colors.white),
            textAlign: TextAlign.center,
            )),

            const Padding(
            padding: EdgeInsetsDirectional.only(start:10, end: 10),
            child: Text('Support is a stock’s price that is considered to be a minimum trading level. Specifically, technical focused investors consider the support value to be the point that a stock typically reverses its course. In other words, if a stock is decreasing in value it will begin to appreciate in price around this point. However, if a stock does break below its support level, technical focused investors believe there is a strong momentum and external force driving that decrease that will continue to push the stock price down. The support value can be the daily low for day traders or the 52W low for long term focused investors.',
            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18, color: Colors.white),
            textAlign: TextAlign.center,
            ))
          ]
        )
      ),
    ));
  }
}