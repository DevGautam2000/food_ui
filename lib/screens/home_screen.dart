import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app_ui/widgets/bottom_navigator.dart';
import 'package:food_app_ui/widgets/brand_carousel.dart';
import 'package:food_app_ui/widgets/food_carousel.dart';
import 'package:food_app_ui/widgets/hero_container.dart';
import 'package:food_app_ui/widgets/profile_row.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              ProfileRow(),
              HeroContainer(),
              SizedBox(
                height: 20.0,
              ),
              FoodCarousel(),
              BrandCarousel(),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 18.0,
                  ),
                  Text(
                    "POPULAR IN YOUR AREA",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                      fontFamily: "Oswald",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigator(_selectedIndex),
      ),
    );
  }
}
