import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Duplicate extends StatefulWidget {
  const Duplicate({Key? key}) : super(key: key);

  @override
  _DuplicateState createState() => _DuplicateState();
}

class _DuplicateState extends State<Duplicate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          SliverAppBar(
            expandedHeight: 100.0,
            backgroundColor: Colors.black,

            title: Shimmer.fromColors(
              baseColor: Colors.red,
              highlightColor: Colors.yellow,
              child: Text(
                'Delicious Food',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Times New Roman",
                ),
              ),
            ),

            centerTitle: true,
            leading: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Icon(
                Icons.shopping_cart,
                size: 22,
              ),
            ),

            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                "We make Fresh and Healthy Food",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),




        ],
      ),
    );
  }
}
