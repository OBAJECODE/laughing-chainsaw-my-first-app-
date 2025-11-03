import 'package:flutter/material.dart';

class Buypage extends StatefulWidget {
  const Buypage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _BuypageState();
  }
}

class _BuypageState extends State<Buypage> {
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
                    SizedBox(height: 20),

                    Row(
                      children: [
                        SizedBox(
                          height: 50,
                          width: 220,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: EdgeInsetsGeometry.symmetric(
                                vertical: 3,
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width: 5),

                                  ClipRRect(
                                    borderRadius: BorderRadiusGeometry.circular(
                                      30,
                                    ),
                                    child: SizedBox(
                                      width: 30,
                                      height: 30,
                                      child: Image.network(
                                        'data:image/png;base64,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',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),

                                  SizedBox(width: 10),

                                  Text("English"),

                                  Spacer(),

                                  Icon(Icons.keyboard_arrow_down),

                                  SizedBox(width: 5),
                                ],
                              ),
                            ),
                          ),
                        ),

                        SizedBox(width: 15),

                        SizedBox(
                          height: 50,
                          width: 220,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: EdgeInsetsGeometry.symmetric(
                                vertical: 3,
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width: 5),

                                  Icon(Icons.monetization_on),

                                  SizedBox(width: 10),

                                  Text("USD"),

                                  Spacer(),

                                  Icon(Icons.keyboard_arrow_down),

                                  SizedBox(width: 5),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 35),

                    Row(
                      children: [
                        Text(
                          "Billing Information",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(width: 8),
                        Icon(Icons.info_outline, color: Colors.grey),
                      ],
                    ),

                    SizedBox(height: 20),

                    SizedBox(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),

                        child: Padding(
                          padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
                          child: Column(
                            children: [
                              SizedBox(height: 15),
                              //1st
                              Padding(
                                padding: EdgeInsetsGeometry.symmetric(
                                  horizontal: 2,
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(5),
                                      ),
                                    ),
                                    labelText: "E-mail *",
                                    prefixIcon: Icon(Icons.email_outlined),
                                  ),
                                ),
                              ),

                              SizedBox(height: 10),

                              //2nd
                              Padding(
                                padding: EdgeInsetsGeometry.symmetric(
                                  horizontal: 2,
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(5),
                                      ),
                                    ),
                                    labelText: "First name *",
                                    prefixIcon: Icon(Icons.person_2_outlined),
                                  ),
                                ),
                              ),

                              SizedBox(height: 10),

                              //3rd
                              Padding(
                                padding: EdgeInsetsGeometry.symmetric(
                                  horizontal: 2,
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(5),
                                      ),
                                    ),
                                    labelText: "Last name *",
                                    prefixIcon: Icon(Icons.person_2_outlined),
                                  ),
                                ),
                              ),

                              SizedBox(height: 10),

                              //4th
                              Padding(
                                padding: EdgeInsetsGeometry.symmetric(
                                  horizontal: 2,
                                ),
                                child: SizedBox(
                                  height: 50,
                                  width: double.infinity,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsGeometry.symmetric(
                                        vertical: 3,
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(width: 5),

                                          Icon(Icons.public),

                                          SizedBox(width: 10),

                                          Text("United States of America"),

                                          Spacer(),

                                          Icon(Icons.keyboard_arrow_down),

                                          SizedBox(width: 5),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(height: 10),

                              //5th
                              Padding(
                                padding: EdgeInsetsGeometry.symmetric(
                                  horizontal: 2,
                                ),
                                child: SizedBox(
                                  height: 50,
                                  width: double.infinity,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsGeometry.symmetric(
                                        vertical: 3,
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(width: 5),

                                          Icon(Icons.home_outlined),

                                          SizedBox(width: 10),

                                          Text("Alabama"),

                                          Spacer(),

                                          Icon(Icons.keyboard_arrow_down),

                                          SizedBox(width: 5),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(height: 15),
                            ],
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 35),

                    SizedBox(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),

                        child: Padding(
                          padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
                          child: Column(
                            children: [
                              SizedBox(height: 15),

                              Row(
                                children: [
                                  SizedBox(
                                    height: 50,
                                    width: 211,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.teal),
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsGeometry.symmetric(
                                          vertical: 3,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.network(
                                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2zdNlBjcvJec5Aq1c60qfwT-sWkyTpQgG8w&s',
                                              fit: BoxFit.contain,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),

                                  SizedBox(width: 15),

                                  SizedBox(
                                    height: 50,
                                    width: 211,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsGeometry.symmetric(
                                          vertical: 3,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.network(
                                              'data:image/png;base64,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',
                                              fit: BoxFit.contain,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: 10),

                              //2nd
                              Padding(
                                padding: EdgeInsetsGeometry.symmetric(
                                  horizontal: 2,
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(5),
                                      ),
                                    ),
                                    labelText: "Card number *",
                                    prefixIcon: Icon(
                                      Icons.credit_card_outlined,
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(height: 10),

                              //3rd
                              Row(
                                children: [
                                  SizedBox(
                                    height: 50,
                                    width: 211,
                                    child: TextField(
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(5),
                                          ),
                                        ),
                                        alignLabelWithHint: true,
                                        labelText: "MM/YY",
                                      ),
                                    ),
                                  ),

                                  SizedBox(width: 15),

                                  SizedBox(
                                    height: 50,
                                    width: 211,
                                    child: TextField(
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(5),
                                          ),
                                        ),
                                        alignLabelWithHint: true,
                                        labelText: "CVV",
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: 10),

                              //4th
                              Padding(
                                padding: EdgeInsetsGeometry.symmetric(
                                  horizontal: 2,
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(5),
                                      ),
                                    ),
                                    prefixIcon: Icon(Icons.public),
                                    labelText: "United States of America",
                                    suffixIcon: Icon(Icons.keyboard_arrow_down),
                                  ),
                                ),
                              ),

                              SizedBox(height: 10),

                              //5th
                              Padding(
                                padding: EdgeInsetsGeometry.symmetric(
                                  horizontal: 2,
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(5),
                                      ),
                                    ),
                                    prefixIcon: Icon(Icons.home),
                                    labelText: "Alabama",
                                    suffixIcon: Icon(Icons.keyboard_arrow_down),
                                  ),
                                ),
                              ),

                              SizedBox(height: 15),
                            ],
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
    );
  }
}
