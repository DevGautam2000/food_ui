import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app_ui/models/items.dart';
import 'package:food_app_ui/widgets/bottom_navigator.dart';

class ItemScreen extends StatefulWidget {
  final FoodItem item;

  ItemScreen(this.item);

  @override
  _ItemScreenState createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  String para =
      "numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium"
      "optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis"
      "optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis"
      "optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis";
  int _counter = 1;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Hero(
                  tag: widget.item.path,
                  child: Container(
                    height: 280.0,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(widget.item.path),
                      fit: BoxFit.cover,
                    )),
                  ),
                ),
                Positioned(
                  top: 30.0,
                  left: 10.0,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            widget.item.name.toUpperCase(),
                            style: TextStyle(
                              fontFamily: "Oswald",
                              fontSize: 35.0,
                            ),
                          ),
                          Icon(
                            CupertinoIcons.clock,
                            color: Colors.deepOrangeAccent,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "The Nautilus",
                            style: TextStyle(
                                fontSize: 15.0, color: Colors.deepOrangeAccent),
                          ),
                          Text(
                            "34 mins",
                            style: TextStyle(
                                fontSize: 15.0, color: Colors.deepOrangeAccent),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "DESCRIPTION",
                        style: TextStyle(
                          fontFamily: "Oswald",
                          fontSize: 13.0,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        para,
                        style: TextStyle(fontSize: 17.0, color: Colors.grey),
                        maxLines: 5,
                      ),
                      SizedBox(
                        height: 35.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "QUANTITY",
                            style: TextStyle(
                                fontFamily: "Oswald",
                                fontSize: 13.0,
                                color: Theme.of(context).primaryColor),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            "SUB TOTAL",
                            style: TextStyle(
                              fontSize: 13.0,
                              fontFamily: "Oswald",
                            ),
                            maxLines: 5,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .50,
                            padding: EdgeInsets.only(left: 15.0),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "${_counter}",
                                  style: TextStyle(fontSize: 16.0),
                                ),
                                Row(
                                  children: [
                                    Material(
                                      color: Colors.transparent,
                                      child: IconButton(
                                        splashRadius: 20.0,
                                        icon: Icon(
                                          CupertinoIcons.minus,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            _counter <= 1 ? 1 : _counter--;
                                          });
                                        },
                                      ),
                                    ),
                                    Material(
                                      color: Colors.transparent,
                                      child: IconButton(
                                        splashRadius: 20.0,
                                        icon: Icon(
                                          Icons.add,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            _counter++;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Text(
                            "Rs. ${widget.item.price}",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: "Oswald",
                                color: Theme.of(context).primaryColor),
                            maxLines: 5,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Theme.of(context).primaryColor),
                              minimumSize: MaterialStateProperty.all(Size(
                                  MediaQuery.of(context).size.width, 50.0)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(50.0)))),
                          onPressed: () {},
                          child: Text(
                            "ADD TO BASKET",
                            style:
                                TextStyle(fontFamily: "Oswald", fontSize: 16.0),
                          ))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigator(2),
      ),
    );
  }
}
