import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:secondapp/pages/Shop.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CartPage();
  }
}

class _CartPage extends State<CartPage> {
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
                          "Mezan Cooking Oil",
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
                          "100% Pure Canola Oil - 1.8 Litres",
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
                            "Mezan Cooking Oil is 100% pure canola oil, light, healthy, and perfect for everyday cooking with a natural taste and heart-friendly benefits.",
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
