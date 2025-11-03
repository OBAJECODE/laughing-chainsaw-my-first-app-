import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:secondapp/pages/Shop.dart';

class DettolPage extends StatefulWidget {
  const DettolPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DettolPage();
  }
}

class _DettolPage extends State<DettolPage> {
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
                          "Dettol Antiseptic",
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
                          "Dettol Antiseptic - 50cl",
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
                            "Dettol Antiseptic is a trusted disinfectant that kills 99.9% of germs. It protects your family from infection and keeps your home clean and safe/.",
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
                          "\$8.99",
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
