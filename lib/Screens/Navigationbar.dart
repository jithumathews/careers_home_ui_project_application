import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class navigation extends StatelessWidget {  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:  BottomNavigationBar(
        backgroundColor: Colors.black,
        elevation: 30,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: "Home"),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: (){

              },
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              label: "Settings"),
        ],
      ),
    );
  }
}
