import 'package:first_app/launchscreen.dart';
import 'package:flutter/material.dart';
import 'stock.dart';
import 'buttons.dart';
import 'all_pages.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'datamodel.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'dart:io';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Homepage());
  }
}

class Homepage extends StatefulWidget {
  // const HomePage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
} 

class _HomepageState extends State<Homepage> {
  final StreamController<DataModel> _streamController = StreamController();

  @override
  void dispose() {
    _streamController.close();
    super.dispose();
    
  }

  @override
  void initState() {
    super.initState();

    // sleep(const Duration(seconds: 2));
    neev();

    Timer.periodic(const Duration(seconds: 10), (timer) {
      neev();
    });
  }

  // Neev - the brains
  Future<void> neev() async {
    var url = Uri.parse('https://augmen.uc.r.appspot.com');
    final response = await http.get(url);
    final databody = json.decode(response.body);
    // print(databody['symbol']);

    DataModel dataModel = DataModel.fromJson(databody);

    _streamController.sink.add(dataModel);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: StreamBuilder<DataModel>(
      stream: _streamController.stream,
      builder: (context, snapdata) {
        switch (snapdata.connectionState) {
          case ConnectionState.waiting:
            return Center(
                child: Column(children: [
              Container(
                  margin: const EdgeInsets.only(top: 200),
                  height: 150,
                  width: 150,
                  // child: Text('Hello')),
                  child: LoadingAnimationWidget.inkDrop(
                      size: 100, color: Colors.green)),
              Container(
                  margin: const EdgeInsets.only(top: 60),
                  child: const Text('Loading...',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontStyle: FontStyle.italic))),
              Container(
                  width: 300,
                  margin: const EdgeInsets.only(top: 45),
                  child: const Text(
                      'Press each button to see the definition of a term and expand your financial literacy!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontStyle: FontStyle.italic)))
            ]));

          default:
            if (snapdata.hasError) {
              return const Text('Please Wait...');
            } else {
              return builder(snapdata.data!);
            }
        }
      },
    )));
  }

  // Widget buildRest(DataModel dataModel) {
  //   return Center(
  //       child: Column(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       Text(
  //         dataModel.ticker,
  //         style: const TextStyle(fontSize: 25),
  //       ),
  //       Text(
  //         '${dataModel.high}',
  //         style: const TextStyle(fontSize: 25),
  //       )
  //     ],
  //   ));
  // }

  // Checks if null (Helper Function)
  bool isNull(var data) {
    return data == null;
  }

  // For values where null is a possibility
  String getNullChecked(var nullCheck) {
    if (isNull(nullCheck)) {
      return 'N/A';
    } else {
      return '${nullCheck.toStringAsFixed(2)}';
    }
  }

  // Helper function for Market Cap button
  String getMktCap(var mktCap) {
    var n = mktCap;
    var count = 0;
    if (!isNull(n)) {
      while (count < 9) {
        n = n / 10;
        count++;
      }
      return 'Market Cap:\n\$${n.toStringAsFixed(2)}B';
    }

    return 'Market Cap:\nN/A';
  }

  String getVol(var mktCap) {
    var n = mktCap;
    var count = 0;
    if (!isNull(n)) {
      while (count < 6) {
        n = n / 10;
        count++;
      }
      return 'Volume:\n\$${n.toStringAsFixed(2)}M';
    }

    return 'Volume:\nN/A';
  }

  String getAvgVol(var mktCap) {
    var n = mktCap;
    var count = 0;
    if (!isNull(n)) {
      while (count < 6) {
        n = n / 10;
        count++;
      }
      return 'Avg Volume:\n\$${n.toStringAsFixed(2)}M';
    }

    return 'Avg Volume:\nN/A';
  }

  // Helper function for EV button
  String getEV(var EV) {
    var n = EV;
    var count = 0;
    if (!isNull(n)) {
      while (count < 9) {
        n = n / 10;
        count++;
      }
      return 'EV:\n\$${n.toStringAsFixed(2)}B';
    }

    return 'N/A';
  }

  // Helper function for EBITDA button
  String getEBITDA(var EBITDA) {
    var n = EBITDA;
    var count = 0;
    if (!isNull(n)) {
      while (count < 9) {
        n = n / 10;
        count++;
      }
      return 'EBITDA:\n\$${n.toStringAsFixed(2)}B';
    }

    return 'N/A';
  }

  Future<void> _launchUrl(DataModel dataModel) async {
    Uri _url = Uri.parse(dataModel.website);
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  double fsize(BuildContext context) {

    var size = (MediaQuery.of(context).size.height) / 59;
    return size;
  }

  Widget builder(DataModel dataModel) {
    var buttonw = (MediaQuery.of(context).size.width) / 3.4;
    var buttonh = (MediaQuery.of(context).size.height) / 13;
    // double fsize = (MediaQuery.of(context).size.height) / 20;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: Color(0xFF02254D)),
        home: Scaffold(
            appBar: AppBar(
              title: Text(dataModel.ticker),
              backgroundColor: Colors.green,
              // foregroundColor: Colors.amber,
              titleTextStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
              // backgroundColor: Color(0xFF4CAF50),
            ),
            body: Center(
              child: Column(children: <Widget>[
                // Stock Chart Page
                Container(
                  margin: const EdgeInsets.only(top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Stock Chart
                      SizedBox(
                        width: buttonw * 1.5,
                        height: buttonh,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PageChart()));
                            },
                            child: Text('See Stock Chart',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: fsize(context))),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              // primary: Color(0xFF4CAF50),
                            )),
                      ),
                      // Website
                      SizedBox(
                        width: buttonw * 1.5,
                        height: buttonh,
                        child: ElevatedButton(
                            onPressed: () {
                              _launchUrl(dataModel);
                            },
                            child: Text('Go to Website',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: fsize(context))),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              // primary: Color(0xFF4CAF50),
                            )),
                      )
                    ],
                  ),
                ),

                // Price
                Container(
                    margin: const EdgeInsets.only(top: 25),
                    child: SizedBox(
                      width: buttonw * 2,
                      height: buttonh,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                              'Current Price:\n\$${getNullChecked(dataModel.price)}',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: fsize(context))),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            primary: Color(0xFF4CAF50),
                          )),
                    )),

                // First Row
                Container(
                  margin: EdgeInsets.only(top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Open
                      SizedBox(
                          width: buttonw,
                          height: buttonh,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PageOpen()));
                              },
                              child: Text(
                                  'Open:\n\$${dataModel.open.toStringAsFixed(2)}',
                                  textAlign: TextAlign.center, style: TextStyle(fontSize: fsize(context))),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                primary: Color(0xFF4CAF50),
                              ))),

                      // High
                      SizedBox(
                          width: buttonw,
                          height: buttonh,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PageHigh()));
                            },
                            child: Text(
                                'High:\n\$${dataModel.high.toStringAsFixed(2)}',
                                textAlign: TextAlign.center, style: TextStyle(fontSize: fsize(context))),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              primary: Color(0xFF4CAF50),
                            ),
                          )),

                      // Volume
                      SizedBox(
                          width: buttonw,
                          height: buttonh,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PageVolume()));
                            },
                            child: Text(getVol(dataModel.volume),
                                textAlign: TextAlign.center, style: TextStyle(fontSize: fsize(context))),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              primary: Color(0xFF4CAF50),
                            ),
                          ))
                    ],
                  ),
                ),

                // Second Row
                Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Close
                        SizedBox(
                            width: buttonw,
                            height: buttonh,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PageClose()));
                              },
                              child: Text(
                                  'Close:\n\$${dataModel.close.toStringAsFixed(2)}',
                                  textAlign: TextAlign.center, style: TextStyle(fontSize: fsize(context))),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                primary: Color(0xFF4CAF50),
                              ),
                            )),

                        // Low
                        SizedBox(
                            width: buttonw,
                            height: buttonh,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PageLow()));
                              },
                              child: Text(
                                  'Low: \n\$${dataModel.low.toStringAsFixed(2)}',
                                  textAlign: TextAlign.center, style: TextStyle(fontSize: fsize(context))),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                primary: Color(0xFF4CAF50),
                              ),
                            )),

                        // Average Volume
                        SizedBox(
                            width: buttonw,
                            height: buttonh,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PageAvgVolume()));
                              },
                              child: Text(getAvgVol(dataModel.avgVolume),
                                  textAlign: TextAlign.center, style: TextStyle(fontSize: fsize(context))),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                primary: Color(0xFF4CAF50),
                              ),
                            ))
                      ],
                    )),

                // Third Row
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // PE
                      SizedBox(
                          width: buttonw,
                          height: buttonh,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PagePE()));
                            },
                            child: Text('P/E:\n${getNullChecked(dataModel.pe)}',
                                textAlign: TextAlign.center, style: TextStyle(fontSize: fsize(context))),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              primary: Color(0xFF4CAF50),
                            ),
                          )),

                      // Market Cap
                      SizedBox(
                          width: buttonw,
                          height: buttonh,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PageMktCap()));
                            },
                            child: Text(getMktCap(dataModel.mktCap),
                                textAlign: TextAlign.center, style: TextStyle(fontSize: fsize(context))),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              primary: const Color(0xFF4CAF50),
                            ),
                          )),

                      // Beta
                      SizedBox(
                          width: buttonw,
                          height: buttonh,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PageBeta()));
                            },
                            child: Text(
                                'Beta:\n${getNullChecked(dataModel.beta)}',
                                textAlign: TextAlign.center, style: TextStyle(fontSize: fsize(context))),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              primary: const Color(0xFF4CAF50),
                            ),
                          ))
                    ],
                  ),
                ),

                // Fourth Row
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // EPS
                      SizedBox(
                          width: buttonw,
                          height: buttonh,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PageEPS()));
                            },
                            child: Text(
                                'EPS:\n${getNullChecked(dataModel.eps)}',
                                textAlign: TextAlign.center, style: TextStyle(fontSize: fsize(context))),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              primary: const Color(0xFF4CAF50),
                            ),
                          )),

                      // PEG
                      SizedBox(
                          width: buttonw,
                          height: buttonh,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PagePEG()));
                            },
                            child: Text(
                                'PEG:\n${getNullChecked(dataModel.peg)}',
                                textAlign: TextAlign.center, style: TextStyle(fontSize: fsize(context))),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              primary: const Color(0xFF4CAF50),
                            ),
                          )),

                      // EV
                      SizedBox(
                          width: buttonw,
                          height: buttonh,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PageEV()));
                            },
                            child: Text(
                              getEV(dataModel.ev),
                              textAlign: TextAlign.center, style: TextStyle(fontSize: fsize(context))
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              primary: const Color(0xFF4CAF50),
                            ),
                          ))
                    ],
                  ),
                ),

                // Fifth Row
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Change
                      SizedBox(
                          width: buttonw,
                          height: buttonh,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PageChange()));
                            },
                            child: Text(
                              'Change',
                              textAlign: TextAlign.center, style: TextStyle(fontSize: fsize(context))
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          )),

                      // EBITDA
                      SizedBox(
                          width: buttonw,
                          height: buttonh,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PageEBITDA()));
                            },
                            child: Text(
                              getEBITDA(dataModel.ebitda),
                              textAlign: TextAlign.center, style: TextStyle(fontSize: fsize(context))
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              primary: const Color(0xFF4CAF50),
                            ),
                          )),

                      // 52 Week High
                      SizedBox(
                          width: buttonw,
                          height: buttonh,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Page52WH()));
                            },
                            child: Text('52 Week High',
                                textAlign: TextAlign.center, style: TextStyle(fontSize: fsize(context))),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),

                // Sixth Row
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Change %
                      SizedBox(
                          width: buttonw,
                          height: buttonh,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PageChangePer()));
                            },
                            child: Text('Change %',
                                textAlign: TextAlign.center, style: TextStyle(fontSize: fsize(context))),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          )),

                      // Yield
                      SizedBox(
                          width: buttonw,
                          height: buttonh,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PageYield()));
                            },
                            child: Text(
                              'Yield',
                              textAlign: TextAlign.center,style: TextStyle(fontSize: fsize(context))
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          )),

                      // 52 Week Low
                      SizedBox(
                          width: buttonw,
                          height: buttonh,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Page52WL()));
                            },
                            child: Text('52 Week Low',
                                textAlign: TextAlign.center, style: TextStyle(fontSize: fsize(context))),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ))
                    ],
                  ),
                )
              ]),
            )));
  }
}
