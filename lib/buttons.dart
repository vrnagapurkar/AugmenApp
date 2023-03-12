import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'stock.dart';
import 'main.dart';
import 'dart:convert';
import 'dart:async';

class top extends Homepage {

  Widget buildTicker() => Container(
      width: 115.0,
      height: 115.0,
      child: Padding(
          padding: const EdgeInsetsDirectional.only(top: 50),
          child: FloatingActionButton.extended(
            onPressed: () {},
            label: Text("Hi"),
            // label: Text(getTicker()),
            extendedTextStyle:
                const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            backgroundColor: Color.fromRGBO(76, 175, 80, 1),
            elevation: 5,
            tooltip: 'Ticker Symbol',
          )));

  Widget buildMenu() => Container(
      width: 115.0,
      height: 115.0,
      child: Padding(
          padding: const EdgeInsetsDirectional.only(top: 45, start: 20),
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.green,
            elevation: 5,
            // child: Text("hello"),
            child: const Icon(Icons.menu),
          )));

  Widget buildReload() => Container(
      width: 115.0,
      height: 115.0,
      child: Padding(
          padding: const EdgeInsetsDirectional.only(top: 45, end: 20),
          child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.green,
              elevation: 5,
              child: const Icon(
                Icons.refresh_rounded,
              ))));
} 
// Stock Terms:
// 	◦	Beta
//  ◦	Yield
// 	◦	EPS
// 	◦	Avg Vol
// 	◦	Vol
// 	◦	P/E
// 	◦	Mkt Cap
// 	◦	Open
// 	◦	High
// 	◦	Low
// 	◦	52 W High
// 	◦	52 W Low
// 	◦	Ticker Symbol
// 	◦	PEG ratio
// 	◦	EV
// 	◦	EBITDA
// 	◦	(More Might Come)

// For general financial stuff IF we choose to have this:
// 	◦	Diversification
// 	◦	Mutual Funds
// 	◦	Index Funds
// 	◦	ETF
