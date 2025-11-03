import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:secondapp/pages/Shop.dart';

class EggsPage extends StatefulWidget {
  const EggsPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _EggsPage();
  }
}

class _EggsPage extends State<EggsPage> {
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
                          "Farm Fresh Eggs",
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
                          "Farm Fresh Eggs - 1 Crate",
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
                            "Fresh Farm Eggs are rich in protein and essential nutrients, perfect for a healthy start to your day. They’re fresh, nutritious, and ideal for cooking, baking, or breakfast.",
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
                          "\$5.75",
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
