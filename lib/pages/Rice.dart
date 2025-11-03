import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:secondapp/pages/Shop.dart';

class RicePage extends StatefulWidget {
  const RicePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _RicePage();
  }
}

class _RicePage extends State<RicePage> {
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
                          "Royal Basmati Rice",
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
                          "Royal Basmati Rice - 1 Bag",
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
                            "Royal Basmati Rice is premium, long-grain rice known for its rich aroma and fluffy texture. It cooks perfectly every time, making it ideal for biryani, jollof, and everyday meals.",
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
                          "\$15.75",
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
