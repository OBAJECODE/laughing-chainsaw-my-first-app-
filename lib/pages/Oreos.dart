import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:secondapp/pages/Shop.dart';

class OreosPage extends StatefulWidget {
  const OreosPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _OreosPage();
  }
}

class _OreosPage extends State<OreosPage> {
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
                          "Oreos",
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
                          "Oreos Cookies - 1 Box",
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
                            "Oreo Biscuits are delicious chocolate cookies with a rich, creamy filling. Perfect for snacking, sharing, or dipping in milk for that classic, sweet crunch/.",
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
                          "\$0.99",
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
