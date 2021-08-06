import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigator extends StatefulWidget {
  int selectedIndex;


  BottomNavigator(this.selectedIndex);

  @override
  _BottomNavigatorState createState() => _BottomNavigatorState(selectedIndex);
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int _selectedIndex;


  _BottomNavigatorState(this._selectedIndex);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Theme.of(context).primaryColor,
        currentIndex: _selectedIndex,
        iconSize: 30.0,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket_outlined), label: ""),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.heart), label: ""),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.profile_circled), label: ""),
        ]);
  }
}
