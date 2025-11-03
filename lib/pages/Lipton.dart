import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:secondapp/pages/Buy.dart';
import 'package:secondapp/pages/Shop.dart';

class LiptonPage extends StatefulWidget {
  const LiptonPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LiptonPage();
  }
}

class _LiptonPage extends State<LiptonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyUI(),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Row(
          children: [
            //profile picture
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(30),
              child: SizedBox(
                width: 40,
                height: 40,
                child: Image.network(
                  'lib/images/image_a.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(width: 5),

            //delivery texts
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(width: 2.5),
                    Text("Delivery to", style: TextStyle(fontSize: 10)),
                  ],
                ),

                SizedBox(height: 2.5),

                Row(
                  children: [
                    Icon(Icons.location_pin, color: Colors.teal, size: 15),

                    SizedBox(width: 2.5),

                    Text(
                      "Kubwa, Abuja",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(width: 5),

                    Icon(Icons.keyboard_arrow_down, size: 15),
                  ],
                ),
              ],
            ),

            Spacer(),

            //search and notifications icon
            Row(
              children: [
                SizedBox(width: 20),

                //search
                SizedBox(
                  height: 30,
                  width: 30,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(Icons.search, size: 20),
                  ),
                ),

                SizedBox(width: 5),

                SizedBox(
                  height: 30,
                  width: 30,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(Icons.notifications, size: 20),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _bodyUI() {
    return Column(
      children: [
        Expanded(
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(height: 10),

                    SizedBox(
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(5),
                            child: SizedBox(
                              width: 280,
                              height: 280,
                              child: Image.network(
                                'data:image/jpeg;base64,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',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 10),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Lipton GreenTea",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),

                        Spacer(),
                      ],
                    ),

                    SizedBox(height: 5),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "100% Pure GreenTea - 60 Pouches",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Spacer(),
                      ],
                    ),

                    SizedBox(height: 2),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            "Lipton Green Tea is a refreshing, antioxidant-rich drink made from 100% pure green tea leaves. It helps boost energy, supports metabolism, and offers a light, natural taste for a healthy lifestyle.",
                            style: TextStyle(color: Colors.grey),
                            softWrap: true,
                            overflow: TextOverflow.visible,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 15),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "\$1.75",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),

                        Spacer(),
                      ],
                    ),

                    SizedBox(height: 15),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Buypage()),
                          );
                        },

                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(double.infinity, 60),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          backgroundColor: (Colors.teal),
                        ),

                        child: Text(
                          "Buy Now",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        SizedBox(
          height: 60,
          width: double.infinity,
          child: DecoratedBox(
            decoration: BoxDecoration(color: Colors.white),
            child: Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //first icon
                  Column(
                    children: [
                      SizedBox(height: 8),
                      Icon(Icons.home, color: Colors.teal),

                      Text(
                        "Home",
                        style: TextStyle(color: Colors.teal, fontSize: 10),
                      ),
                    ],
                  ),

                  //second icon
                  Column(
                    children: [
                      SizedBox(height: 8),
                      Icon(Icons.phone_iphone),

                      Text("Groceries", style: TextStyle(fontSize: 10)),
                    ],
                  ),

                  //third icon
                  Column(
                    children: [
                      SizedBox(height: 4),
                      Icon(
                        Icons.qr_code_scanner_outlined,
                        color: Colors.teal,
                        size: 40,
                      ),
                      SizedBox(height: 4),
                    ],
                  ),

                  Column(
                    children: [
                      SizedBox(height: 8),
                      Icon(Icons.local_grocery_store),

                      Text("Groceries", style: TextStyle(fontSize: 10)),
                    ],
                  ),

                  Column(
                    children: [
                      SizedBox(height: 8),
                      Icon(Icons.person),

                      Text("Profile", style: TextStyle(fontSize: 10)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
