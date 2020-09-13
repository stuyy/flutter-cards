import 'package:flutter/material.dart';

class CardListingScreen extends StatelessWidget {

  final String imageUrl;

  CardListingScreen({ this.imageUrl });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Hero(
        tag: this.imageUrl,
        child: Material(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(this.imageUrl),
                      fit: BoxFit.cover
                  ),
                ),
              ),
              Positioned(
                child: Container(
                  color: Colors.red,
                  height: 75,
                ),
              ),
              Positioned(
                top: 0,
                child: Container(
                  child: Text("Phoenix, Arizona", style: TextStyle(fontSize: 14, color: Colors.white)),
                ),
              ),
              Positioned(
                bottom: 15,
                child: ConstrainedBox(
                  constraints: BoxConstraints(minWidth: 100, maxWidth: 350, maxHeight: 60),
                  child: Container(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: Text(
                        'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum',
                        style: TextStyle(fontSize: 14, color: Colors.white)),
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}