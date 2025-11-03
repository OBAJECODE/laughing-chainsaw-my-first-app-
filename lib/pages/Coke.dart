import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:secondapp/pages/Shop.dart';

class CokePage extends StatefulWidget {
  const CokePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CokePage();
  }
}

class _CokePage extends State<CokePage> {
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
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-x3h2z-cHFLGGr0cVMPC6XVNQ6cCUSqJa0Q&s',
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
                          "Coca-Cola",
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
                          "Coca-Cola - 1 Crate",
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
                            "Coca-Cola is the classic, refreshing soft drink with a bold, bubbly taste. Perfect for any moment, it delivers the timeless enjoyment you know and love.",
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
                          "\$5.99",
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
