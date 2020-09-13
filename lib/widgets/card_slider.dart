import 'package:flutter/material.dart';

class CardSlider extends StatefulWidget {

  CardSlider({ Key key }): super(key: key);

  @override
  CardSliderState createState() => CardSliderState();
}

class CardSliderState extends State<CardSlider> {

  final PageController _pageController = PageController(
    viewportFraction: 0.65,
    initialPage: 0,
  );
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Center(
        child: Container(
          height: 300,
          child: PageView(
            onPageChanged: (int value) {
              setState(() {
                _currentPage = value;
              });
            },
            controller: _pageController,
            scrollDirection: Axis.horizontal,
            children: [
              AnimatedContainer(
                margin: _currentPage == 0 ? EdgeInsets.all(0) : EdgeInsets.all(20),
                duration: Duration(milliseconds: 200),
                child: Card(
                  elevation: 2,
                  color: Colors.red[500],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: ListTile(
                    title: Text('Page 1'),
                  ),
                ),
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 200),
                margin: _currentPage == 1 ? EdgeInsets.all(0) : EdgeInsets.all(20),
                child: Card(
                  elevation: 2,
                  color: Colors.pink,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: ListTile(
                    title: Text('Page 2'),
                  ),
                ),
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 200),
                margin: _currentPage == 2 ? EdgeInsets.all(0) : EdgeInsets.all(20),
                child: Card(
                  color: Colors.purpleAccent,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: ListTile(
                    title: Text('Page 3'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Stack(
        children: [
          Positioned(
            top: 370,
            left: 35,
            right: 35,
            child: Container(
              margin: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FloatingActionButton(
                    child: Icon(Icons.arrow_back),
                    onPressed: () {
                      _pageController.animateToPage(_currentPage-1, duration: Duration(milliseconds: 250), curve: Curves.ease);
                    },
                  ),
                  FloatingActionButton(
                    child: Icon(Icons.arrow_forward),
                    onPressed: () {
                      _pageController.animateToPage(_currentPage+1, duration: Duration(milliseconds: 250), curve: Curves.ease);
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}