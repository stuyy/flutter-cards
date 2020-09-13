import 'package:flutter/material.dart';
import 'package:flutter_practice/screens/CardListingScreen.dart';

class CardListing extends StatelessWidget {

  final String title;
  final Color color;
  final String imageUrl;

  CardListing({
    Key key,
    this.title,
    this.color,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Hero(
      tag: this.imageUrl,
      child: Material(
        child: Container(
          width: 230,
          child: Stack(
            children: <Widget>[
              Positioned(
                  bottom: -10,
                  left: 0,
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Container(
                        margin: EdgeInsets.all(20),
                        padding: EdgeInsets.all(20),
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: this.color,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  offset: Offset(0,0),
                                  blurRadius: 10,
                                  spreadRadius: 0.2
                              )
                            ]
                        ),
                      ),
                      Positioned(
                        bottom: 40,
                        left: 35,
                        child: Container(
                          width: 150,
                          child: Text(
                              "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12
                              )
                          ),
                        ),
                      )
                    ],
                  )
              ),
              Positioned(
                  bottom: 65,
                  left: 7.5,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CardListingScreen(imageUrl: this.imageUrl)));
                    },
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.only(bottom: 10, left: 10),
                      child: Stack(
                        children: [
                          Text(this.title,
                              style: TextStyle(fontSize: 14, color: Colors.white)),
                        ],
                      ),
                      width: 185,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(
                              image: NetworkImage(this.imageUrl),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.srcATop)
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                offset: Offset(1,0),
                                blurRadius: 5,
                                spreadRadius: 0
                            )
                          ]
                      ),
                    ),
                  )
              )
            ],
          ),
        ),
      )
    );
  }
}