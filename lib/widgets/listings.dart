import 'package:flutter/material.dart';
import 'package:flutter_practice/widgets/card_listing.dart';

class TravelListings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        height: 250,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            CardListing(
                title: "Phoenix, Arizona",
                color: Colors.white,
                imageUrl: "https://images.unsplash.com/photo-1572766862815-14bce94d081c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=676&q=80",
            ),
            CardListing(
                title: "Scottsdale, Arizona",
                color: Colors.white,
                imageUrl: "https://images.unsplash.com/photo-1594760452799-feb5358ca213?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80",
            ),
            CardListing(
                title: "Dallas, Texas",
                color: Colors.white,
                imageUrl: "https://images.unsplash.com/photo-1531218150217-54595bc2b934?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80",
            ),
            CardListing(
                title: "Venice Beach, California",
                color: Colors.white,
                imageUrl: "https://images.unsplash.com/photo-1532993134-5a9c16eeaeb5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1236&q=80"
            ),
          ],
        )
    );
  }
}