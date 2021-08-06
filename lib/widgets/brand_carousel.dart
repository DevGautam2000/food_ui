import 'package:flutter/material.dart';
import 'package:food_app_ui/models/items.dart';

class BrandCarousel extends StatelessWidget {
  const BrandCarousel({
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
                "RESTAURANTS",
                style: TextStyle(
                  fontFamily: "Oswald",
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
                height: 120.0,
                child: ListView.builder(
                    itemCount: brandItems.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.all(10.0),
                        width: 100.0,
                        margin: EdgeInsets.only(
                            right: 20.0, top: 10.0, bottom: 10.0, left: 10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 8.0,
                              spreadRadius: 1.0,
                              offset: Offset(10.0, 8.0),
                            )
                          ],
                        ),
                        child: Image(
                          image: AssetImage(
                            brandItems[index].path,
                          ),
                          fit: BoxFit.cover,
                        ),
                      );
                    })),
          )
        ],
      ),
    );
  }
}
