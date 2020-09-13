import 'package:flutter/material.dart';

class IconMenu extends StatefulWidget {

  IconMenu({ Key key }): super(key: key);
  @override
  _IconMenuState createState() => _IconMenuState();
}

class _IconMenuState extends State<IconMenu> {
  List<Icon> icons = [
    Icon(Icons.restaurant_menu, color: Colors.white),
    Icon(Icons.image, color: Colors.white),
    Icon(Icons.directions, color: Colors.white),
    Icon(Icons.credit_card, color: Colors.white),
    Icon(Icons.fastfood, color: Colors.white),
  ];
  int _currentIndex = 0;
  Widget _buildIconButton(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 100),
        margin: EdgeInsets.all(5),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _currentIndex == index ? Colors.red : Colors.grey,
        ),
        child: icons[index],
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    int _currentIndex = 1;
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: EdgeInsets.only(top: 10, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: icons
              .asMap()
              .entries
              .map(
                (MapEntry icon) => _buildIconButton(icon.key)
              ).toList()
          ),
        )
      ),
    );
  }
}