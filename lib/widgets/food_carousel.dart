import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app_ui/models/items.dart';
import 'package:food_app_ui/screens/item_screen.dart';

class FoodCarousel extends StatelessWidget {
  const FoodCarousel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: 10.0,
              ),
              Text(
                "RECOMMENDED FOR YOU",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                  fontFamily: "Oswald",
                ),
              ),
            ],
          ),
          Container(
            height: 280.0,
            margin: EdgeInsets.symmetric(vertical: 20.0),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: foodItems.length,
                itemBuilder: (context, index) {
                  FoodItem item = foodItems[index];
                  var containerWidth = 180.0;
                  return Container(
                    width: containerWidth,
                    margin: EdgeInsets.only(right: 20.0),
                    // color: Colors.blue,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 20.0,
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            height: 100.0,
                            width: containerWidth,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 8.0,
                                    spreadRadius: 1.0,
                                    offset: Offset(5.0, 8.0),
                                  )
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  item.name,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Rs. ${item.price}",
                                      style: TextStyle(
                                          color: Theme.of(context).primaryColor,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Oswald"),
                                    ),
                                    Icon(
                                      Icons.shopping_basket,
                                      color: Theme.of(context).primaryColor,
                                      size: 25.0,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Stack(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => ItemScreen(item)));
                              },
                              child: Hero(
                                tag: item.path,
                                child: Container(
                                  height: 170,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(item.path),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 8.0,
                                          spreadRadius: 1.0,
                                          offset: Offset(2.0, 5.0),
                                        )
                                      ]),
                                ),
                              ),
                            ),
                            Positioned(
                              child: Icon(
                                CupertinoIcons.heart,
                                color: Colors.white,
                              ),
                              bottom: 10.0,
                              right: 10.0,
                            )
                          ],
                        )
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
