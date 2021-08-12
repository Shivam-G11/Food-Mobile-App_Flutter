// import 'dart:html';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'duplicate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: FoodUi());
  }
}

class FoodUi extends StatefulWidget {
  const FoodUi({Key? key}) : super(key: key);

  @override
  _FoodUiState createState() => _FoodUiState();
}

class _FoodUiState extends State<FoodUi> {

  // bool _hasBeenPressed1 = false;
  // bool _hasBeenPressed2 = false;
  // bool _hasBeenPressed3 = false;
  // bool _hasBeenPressed4 = false;
  // bool _hasBeenPressed5 = false;
  // bool _hasBeenPressed6 = false;
  // bool _hasBeenPressed7 = false;

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      endDrawer: Drawer(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.teal,
                child: SafeArea(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50)),
                          child: Card(
                            child: Image.asset("assets/profile1.png"),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Hello, Shivam",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Cursive"),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 15, bottom: 15),
                child: Text(
                  "Home",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 15, bottom: 15),
                child: Text(
                  "Shop by Category",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 15, bottom: 15),
                child: Text(
                  "Today's Deals",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Divider(
                thickness: 1.5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 15, bottom: 15),
                child: Text(
                  "Your Orders",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 15, bottom: 15),
                child: Text(
                  "Buy Again",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 15, bottom: 15),
                child: Text(
                  "Your Wishlist",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 15, bottom: 15),
                child: Text(
                  "Your Account",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 15, bottom: 15),
                child: Text(
                  "Virtual Pay",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 15, bottom: 15),
                child: Text(
                  "Be a Prime Member",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 15, bottom: 15),
                child: Text(
                  "Customize Your Food",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 15, bottom: 15),
                child: Row(
                  children: [
                    Text(
                      "Programs and Features",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 79,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1.5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 15, bottom: 15),
                child: Text(
                  "Language",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 15, bottom: 15),
                child: Text(
                  "Your Notifications",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 15, bottom: 15),
                child: Row(
                  children: [
                    Text(
                      "Settings",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      height: 20,
                      width: 30,
                      child: Image.asset("assets/flag.png"),
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 15, bottom: 15),
                child: Text(
                  "Customer Service",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Icon(
            Icons.shopping_cart,
            size: 22,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.black,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Shimmer.fromColors(
                        baseColor: Colors.red,
                        highlightColor: Colors.yellow,
                        child: Text(
                          'Delicious Food',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Times New Roman",
                          ),
                        ),
                      ),
                      Text(
                        "We make Fresh and Healthy Food",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 30, right: 20),
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Card(
                            child: Image.asset("assets/icon1.png"),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Card(
                            child: Image.asset("assets/icon2.png"),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Card(
                            child: Image.asset("assets/icon3.png"),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Card(
                            child: Image.asset("assets/icon4.png"),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Card(
                            child: Image.asset("assets/icon1.png"),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Card(
                            child: Image.asset("assets/icon2.png"),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  color: Colors.black,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 80, right: 10, left: 20),
                              child: Stack(
                                overflow: Overflow.visible,
                                children: [
                                  Container(
                                    width: 200,
                                    height: 250,
                                    child: Card(
                                      elevation: 10,
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 140,
                                    right: 20,
                                    left: 20,
                                    child: Container(
                                        alignment: Alignment.center,
                                        child: Image.asset(
                                          "assets/1.png",
                                          width: 200,
                                          height: 200,
                                        )),
                                  ),
                                  Positioned(
                                      top: 120,
                                      right: 20,
                                      left: 30,
                                      child: Text(
                                        "Crab Ramen",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  Positioned(
                                      top: 160,
                                      right: 20,
                                      left: 30,
                                      child: Text(
                                        "Spicy with Garlic",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  Positioned(
                                    top: 200,
                                    right: 20,
                                    left: 30,
                                    child: Text(
                                      new String.fromCharCodes(new Runes(
                                        '\u0024 24.00',
                                      )),
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Positioned(
                                      top: 200,
                                      right: 10,
                                      left: 120,
                                      child: Container(
                                        width: 25,
                                        height: 25,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: Image.asset("assets/icon5.png"),
                                      )
                                      // Icon(Icons.face)
                                      ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 80, right: 10, left: 10),
                              child: Stack(
                                overflow: Overflow.visible,
                                children: [
                                  Container(
                                    width: 200,
                                    height: 250,
                                    child: Card(
                                      elevation: 10,
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 140,
                                    right: 0,
                                    left: 0,
                                    child: Container(
                                        alignment: Alignment.center,
                                        child: Image.asset(
                                          "assets/2.png",
                                          width: 200,
                                          height: 200,
                                        )),
                                  ),
                                  Positioned(
                                      top: 120,
                                      right: 20,
                                      left: 30,
                                      child: Text(
                                        "Juciy Meat",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  Positioned(
                                      top: 160,
                                      right: 20,
                                      left: 30,
                                      child: Text(
                                        "Fresh with Veggies",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  Positioned(
                                    top: 200,
                                    right: 20,
                                    left: 30,
                                    child: Text(
                                      new String.fromCharCodes(new Runes(
                                        '\u0024 20.00',
                                      )),
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Positioned(
                                      top: 200,
                                      right: 10,
                                      left: 120,
                                      child: Container(
                                        width: 25,
                                        height: 25,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: Image.asset("assets/icon5.png"),
                                      )
                                      // Icon(Icons.face)
                                      ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 80, right: 10, left: 10),
                              child: Stack(
                                overflow: Overflow.visible,
                                children: [
                                  Container(
                                    width: 200,
                                    height: 250,
                                    child: Card(
                                      elevation: 10,
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 140,
                                    right: 17,
                                    left: 17,
                                    child: Container(
                                        alignment: Alignment.center,
                                        child: Image.asset(
                                          "assets/3.png",
                                          width: 200,
                                          height: 200,
                                        )),
                                  ),
                                  Positioned(
                                      top: 120,
                                      right: 20,
                                      left: 30,
                                      child: Text(
                                        "Chicken Slices",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  Positioned(
                                      top: 160,
                                      right: 20,
                                      left: 30,
                                      child: Text(
                                        "Real Chicken",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  Positioned(
                                    top: 200,
                                    right: 20,
                                    left: 30,
                                    child: Text(
                                      new String.fromCharCodes(new Runes(
                                        '\u0024 15.00',
                                      )),
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Positioned(
                                      top: 200,
                                      right: 10,
                                      left: 120,
                                      child: Container(
                                        width: 25,
                                        height: 25,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: Image.asset("assets/icon5.png"),
                                      )
                                      // Icon(Icons.face)
                                      ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 80, right: 20, left: 10),
                              child: Stack(
                                overflow: Overflow.visible,
                                children: [
                                  Container(
                                    width: 200,
                                    height: 250,
                                    child: Card(
                                      elevation: 10,
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 140,
                                    right: 5,
                                    left: 5,
                                    child: Container(
                                        alignment: Alignment.center,
                                        child: Image.asset(
                                          "assets/4.png",
                                          width: 200,
                                          height: 200,
                                        )),
                                  ),
                                  Positioned(
                                      top: 120,
                                      right: 20,
                                      left: 30,
                                      child: Text(
                                        "Big Burger",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  Positioned(
                                      top: 160,
                                      right: 20,
                                      left: 30,
                                      child: Text(
                                        "Add Your Fillings",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  Positioned(
                                    top: 200,
                                    right: 20,
                                    left: 30,
                                    child: Text(
                                      new String.fromCharCodes(new Runes(
                                        '\u0024 10.00',
                                      )),
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Positioned(
                                      top: 200,
                                      right: 10,
                                      left: 120,
                                      child: Container(
                                        width: 25,
                                        height: 25,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: Image.asset("assets/icon5.png"),
                                      )
                                      // Icon(Icons.face)
                                      ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                          left: 20,
                        ),
                        child: Stack(
                          overflow: Overflow.visible,
                          children: [
                            Container(
                              height: 180,
                              width: 300,
                              // color: Colors.teal,
                              child: Card(
                                elevation: 20,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              right: -260,
                              left: 20,
                              bottom: 10,
                              child: Container(
                                  child: Image.asset(
                                "assets/11.png",
                                width: 150,
                                height: 150,
                              )),
                            ),
                            Positioned(
                              top: 40,
                              left: 30,
                              child: Text(
                                "Eggs Curry",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Positioned(
                              top: 80,
                              left: 30,
                              child: Text(
                                "Eggs to Tomato and\nSauce",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Positioned(
                              top: 130,
                              left: 30,
                              child: Text(
                                new String.fromCharCodes(new Runes(
                                  '\u0024 15.00',
                                )),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Positioned(
                              top: 129,
                              left: 150,
                              child: Container(
                                height: 30,
                                width: 30,
                                child: GestureDetector(
                                  onTap: (){
                                    setState(() {

                                    });
                                  },
                                    child: Image.asset(
                                  "assets/icon5.png",
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                          left: 20,
                        ),
                        child: Stack(
                          overflow: Overflow.visible,
                          children: [
                            Container(
                              height: 180,
                              width: 300,
                              // color: Colors.teal,
                              child: Card(
                                elevation: 20,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              right: -250,
                              left: 20,
                              bottom: 10,
                              child: Container(
                                  child: Image.asset(
                                "assets/12.png",
                                width: 150,
                                height: 150,
                              )),
                            ),
                            Positioned(
                              top: 40,
                              left: 30,
                              child: Text(
                                "Yumm, Fish Fries",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Positioned(
                              top: 80,
                              left: 30,
                              child: Text(
                                "Include Crispy \n6 pieces",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Positioned(
                              top: 130,
                              left: 30,
                              child: Text(
                                new String.fromCharCodes(new Runes(
                                  '\u0024 21.00',
                                )),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Positioned(
                              top: 129,
                              left: 150,
                              child: Container(
                                height: 30,
                                width: 30,
                                child: Image.asset(
                                  "assets/icon5.png",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                          left: 20,
                        ),
                        child: Stack(
                          overflow: Overflow.visible,
                          children: [
                            Container(
                              height: 180,
                              width: 300,
                              // color: Colors.teal,
                              child: Card(
                                elevation: 20,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              right: -250,
                              left: 20,
                              bottom: 10,
                              child: Container(
                                  child: Image.asset(
                                "assets/13.png",
                                width: 150,
                                height: 150,
                              )),
                            ),
                            Positioned(
                              top: 40,
                              left: 30,
                              child: Text(
                                "Chicken Wings",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Positioned(
                              top: 80,
                              left: 30,
                              child: Text(
                                "Specials Offer \nApplied",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Positioned(
                              top: 130,
                              left: 30,
                              child: Text(
                                new String.fromCharCodes(new Runes(
                                  '\u0024 25.00',
                                )),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Positioned(
                              top: 129,
                              left: 150,
                              child: Container(
                                height: 30,
                                width: 30,
                                child: Image.asset(
                                  "assets/icon5.png",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        backgroundColor: Colors.teal,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.account_balance_wallet, size: 30),
          Icon(Icons.textsms, size: 30),
          Icon(Icons.account_circle, size: 30),
          // Icon(Icons.supervisor_account_rounded, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
    );

    // CustomScrollView(
    //   slivers: [
    //     SliverAppBar(
    //       expandedHeight: 100,
    //       title: Text("Sliver AppBAr"),
    //       elevation: 50,
    //       centerTitle: true,
    //       backgroundColor: Colors.red,
    //
    //
    //     ),
    //   ],
    // );
  }
}
