import 'dart:async';

import 'package:flutter/material.dart';
import 'package:secondapp/pages/Cart.dart';
import 'package:secondapp/pages/Coke.dart';
import 'package:secondapp/pages/CookingOil.dart';
import 'package:secondapp/pages/Dettol.dart';
import 'package:secondapp/pages/Eggs.dart';
import 'package:secondapp/pages/Groceries.dart';
import 'package:secondapp/pages/Ketchup.dart';
import 'package:secondapp/pages/Lipton.dart';
import 'package:secondapp/pages/Oreos.dart';
import 'package:secondapp/pages/Rice.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ShopPageState();
  }
}

class _ShopPageState extends State<ShopPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<String> _images = [
    'https://picsum.photos/id/1018/400/200',
    'https://picsum.photos/id/1015/400/200',
    'https://picsum.photos/id/1016/400/200',
  ];

  @override
  void initState() {
    super.initState();

    Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < _images.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyUI(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
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

                    //search bar
                    SizedBox(
                      height: 35,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          labelText: "Search Grocercy",
                          labelStyle: TextStyle(fontSize: 10),
                          suffixIcon: Icon(Icons.mic, color: Colors.teal),
                          prefixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),

                    SizedBox(height: 10),

                    //highlight pic
                    SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: PageView.builder(
                        controller: _pageController,
                        itemCount: _images.length,
                        itemBuilder: (context, index) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              _images[index],
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          );
                        },
                      ),
                    ),

                    SizedBox(height: 10),

                    Row(
                      children: [
                        Text(
                          "Most Popular Category",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),

                        Spacer(),

                        Icon(Icons.more_horiz),
                      ],
                    ),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(5),
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: Image.network(
                                'data:image/jpeg;base64,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',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          SizedBox(width: 5),

                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(5),
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: Image.network(
                                'data:image/jpeg;base64,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',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          SizedBox(width: 5),

                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(5),
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: Image.network(
                                'data:image/jpeg;base64,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',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          SizedBox(width: 5),

                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(5),
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: Image.network(
                                'data:image/jpeg;base64,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',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          SizedBox(width: 5),

                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(5),
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: Image.network(
                                'data:image/jpeg;base64,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',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          SizedBox(width: 5),

                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(5),
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: Image.network(
                                'data:image/jpeg;base64,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',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          SizedBox(width: 5),

                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(5),
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: Image.network(
                                'data:image/jpeg;base64,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',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 15),

                    Row(
                      children: [
                        Text(
                          "Flash sales today",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),

                        Spacer(),

                        Icon(Icons.more_horiz),
                      ],
                    ),

                    SizedBox(height: 10),

                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 230,
                            width: 230,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => OilPage(),
                                  ),
                                );
                              },
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsGeometry.all(10),
                                  child: Column(
                                    children: [
                                      Image.network(
                                        "data:image/jpeg;base64,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",
                                      ),
                                      SizedBox(height: 5),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Mezan Cooking Oil",
                                                style: TextStyle(fontSize: 10),
                                              ),

                                              SizedBox(height: 3),

                                              Text(
                                                "\$10.75",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),

                                          Spacer(),

                                          Icon(
                                            Icons.add_box_rounded,
                                            color: Colors.teal,
                                            size: 30,
                                          ),
                                        ],
                                      ),

                                      SizedBox(height: 3),

                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "14% OFF",
                                            style: TextStyle(
                                              //fontWeight: FontWeight.w700,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 230,
                            width: 230,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LiptonPage(),
                                    ),
                                  );
                                },
                                child: Padding(
                                  padding: EdgeInsetsGeometry.all(10),
                                  child: Column(
                                    children: [
                                      Image.network(
                                        'data:image/jpeg;base64,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',
                                      ),
                                      SizedBox(height: 5),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Lipton GreenTea",
                                                style: TextStyle(fontSize: 10),
                                              ),

                                              SizedBox(height: 3),

                                              Text(
                                                "\$1.75",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),

                                          Spacer(),

                                          Icon(
                                            Icons.add_box_rounded,
                                            color: Colors.teal,
                                            size: 30,
                                          ),
                                        ],
                                      ),

                                      SizedBox(height: 3),

                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "14% OFF",
                                            style: TextStyle(
                                              //fontWeight: FontWeight.w700,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 5),

                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 230,
                            width: 230,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => EggsPage(),
                                    ),
                                  );
                                },
                                child: Padding(
                                  padding: EdgeInsetsGeometry.all(10),
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadiusGeometry.circular(5),
                                        child: SizedBox(
                                          width: 150,
                                          height: 150,
                                          child: Image.network(
                                            'data:image/jpeg;base64,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',

                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),

                                      SizedBox(height: 5),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Farm Fresh Eggs",
                                                style: TextStyle(fontSize: 10),
                                              ),

                                              SizedBox(height: 3),

                                              Text(
                                                "\$5.75",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),

                                          Spacer(),

                                          Icon(
                                            Icons.add_box_rounded,
                                            color: Colors.teal,
                                            size: 30,
                                          ),
                                        ],
                                      ),

                                      SizedBox(height: 3),

                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "14% OFF",
                                            style: TextStyle(
                                              //fontWeight: FontWeight.w700,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 230,
                            width: 230,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => OreosPage(),
                                    ),
                                  );
                                },

                                child: Padding(
                                  padding: EdgeInsetsGeometry.all(10),
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadiusGeometry.circular(5),
                                        child: SizedBox(
                                          width: 150,
                                          height: 150,
                                          child: Image.network(
                                            'data:image/jpeg;base64,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',

                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),

                                      SizedBox(height: 5),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Oreos",
                                                style: TextStyle(fontSize: 10),
                                              ),

                                              SizedBox(height: 3),

                                              Text(
                                                "\$0.99",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),

                                          Spacer(),

                                          Icon(
                                            Icons.add_box_rounded,
                                            color: Colors.teal,
                                            size: 30,
                                          ),
                                        ],
                                      ),

                                      SizedBox(height: 3),

                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "14% OFF",
                                            style: TextStyle(
                                              //fontWeight: FontWeight.w700,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 5),

                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 230,
                            width: 230,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => KetchupPage(),
                                    ),
                                  );
                                },
                                child: Padding(
                                  padding: EdgeInsetsGeometry.all(10),
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadiusGeometry.circular(5),
                                        child: SizedBox(
                                          width: 150,
                                          height: 150,
                                          child: Image.network(
                                            'data:image/jpeg;base64,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',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),

                                      SizedBox(height: 5),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Heinz Tomato Ketchup - 500ml",
                                                style: TextStyle(fontSize: 10),
                                              ),

                                              SizedBox(height: 3),

                                              Text(
                                                "\$10.75",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),

                                          Spacer(),

                                          Icon(
                                            Icons.add_box_rounded,
                                            color: Colors.teal,
                                            size: 30,
                                          ),
                                        ],
                                      ),

                                      SizedBox(height: 3),

                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "14% OFF",
                                            style: TextStyle(
                                              //fontWeight: FontWeight.w700,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 230,
                            width: 230,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => CokePage(),
                                    ),
                                  );
                                },
                                child: Padding(
                                  padding: EdgeInsetsGeometry.all(10),
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadiusGeometry.circular(5),
                                        child: SizedBox(
                                          width: 150,
                                          height: 150,
                                          child: Image.network(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-x3h2z-cHFLGGr0cVMPC6XVNQ6cCUSqJa0Q&s',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),

                                      SizedBox(height: 5),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Coca Cola - 1 Crate",
                                                style: TextStyle(fontSize: 10),
                                              ),

                                              SizedBox(height: 3),

                                              Text(
                                                "\$5.99",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),

                                          Spacer(),

                                          Icon(
                                            Icons.add_box_rounded,
                                            color: Colors.teal,
                                            size: 30,
                                          ),
                                        ],
                                      ),

                                      SizedBox(height: 3),

                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "14% OFF",
                                            style: TextStyle(
                                              //fontWeight: FontWeight.w700,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 5),

                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 230,
                            width: 230,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => RicePage(),
                                    ),
                                  );
                                },
                                child: Padding(
                                  padding: EdgeInsetsGeometry.all(10),
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadiusGeometry.circular(5),
                                        child: SizedBox(
                                          width: 150,
                                          height: 150,
                                          child: Image.network(
                                            'data:image/jpeg;base64,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',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),

                                      SizedBox(height: 5),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Royal Basmati Rice",
                                                style: TextStyle(fontSize: 10),
                                              ),

                                              SizedBox(height: 3),

                                              Text(
                                                "\$15.75",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),

                                          Spacer(),

                                          Icon(
                                            Icons.add_box_rounded,
                                            color: Colors.teal,
                                            size: 30,
                                          ),
                                        ],
                                      ),

                                      SizedBox(height: 3),

                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "14% OFF",
                                            style: TextStyle(
                                              //fontWeight: FontWeight.w700,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 230,
                            width: 230,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DettolPage(),
                                    ),
                                  );
                                },
                                child: Padding(
                                  padding: EdgeInsetsGeometry.all(10),
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadiusGeometry.circular(5),
                                        child: SizedBox(
                                          width: 150,
                                          height: 150,
                                          child: Image.network(
                                            'data:image/jpeg;base64,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',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),

                                      SizedBox(height: 5),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Dettol Antiseptic - 50cl",
                                                style: TextStyle(fontSize: 10),
                                              ),

                                              SizedBox(height: 3),

                                              Text(
                                                "\$8.99",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),

                                          Spacer(),

                                          Icon(
                                            Icons.add_box_rounded,
                                            color: Colors.teal,
                                            size: 30,
                                          ),
                                        ],
                                      ),

                                      SizedBox(height: 3),

                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "14% OFF",
                                            style: TextStyle(
                                              //fontWeight: FontWeight.w700,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
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
                  SizedBox(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GroceriesPage(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          SizedBox(height: 8),
                          Icon(Icons.phone_iphone),

                          Text("Groceries", style: TextStyle(fontSize: 10)),
                        ],
                      ),
                    ),
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

                  SizedBox(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CartPage()),
                        );
                      },
                      child: Column(
                        children: [
                          SizedBox(height: 8),
                          Icon(Icons.local_grocery_store),

                          Text("Cart", style: TextStyle(fontSize: 10)),
                        ],
                      ),
                    ),
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
