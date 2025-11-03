import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:secondapp/pages/Shop.dart';

class KetchupPage extends StatefulWidget {
  const KetchupPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _KetchupPage();
  }
}

class _KetchupPage extends State<KetchupPage> {
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
                                fit: BoxFit.cover,
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
                          "Heinz Tomato Ketchup",
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
                          "Heinz Tomato Ketchup - 500ml",
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
                            "Heinz Tomato Ketchup is made from ripe, juicy tomatoes for a rich and tangy flavor. It’s the perfect companion for fries, burgers, and everyday meals.",
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
                          "\$10.75",
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
                            MaterialPageRoute(builder: (context) => ShopPage()),
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
