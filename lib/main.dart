import 'package:flutter/material.dart';
import 'package:flutter_practice/widgets/icon_menu.dart';
import 'package:flutter_practice/widgets/listings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        canvasColor: Colors.transparent,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final double _minSheetPosition = 200.0;
  final double _maxSheetPosition = 500.0;
  double _bottomSheetHeight = 200.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          IconMenu(),
          TravelListings(),

        ],
      ),
      // bottomSheet: GestureDetector(
      //   // onPanUpdate: (DragUpdateDetails details) {
      //   //   final double offset = MediaQuery.of(context).size.height - details.globalPosition.dy;
      //   //   print(offset);
      //   //   if (offset > _minSheetPosition && offset < _maxSheetPosition) {
      //   //     setState(() {
      //   //       _bottomSheetHeight = MediaQuery.of(context).size.height - details.globalPosition.dy;
      //   //     });
      //   //   }
      //   // },
      //   child: Container(
      //     height: 200,
      //     decoration: BoxDecoration(
      //       borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      //       color: Colors.red,
      //     ),
      //     child: Row(
      //       children: [
      //         Container(
      //           constraints: BoxConstraints.expand(width: MediaQuery.of(context).size.width),
      //           child: TextField(
      //             decoration: InputDecoration(
      //               contentPadding: EdgeInsets.all(20),
      //             ),
      //
      //             onSubmitted: (value) {
      //               print(value);
      //             },
      //           ),
      //         )
      //       ],
      //     )
      //   ),
      // )
    );
  }
}
