import 'package:flutter/material.dart';
import 'package:secondapp/pages/FRGTPASS.dart';
import 'package:secondapp/pages/Shop.dart';
import 'Login.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _RegistrationPageState();
  }
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _bodyUI());
  }

  Widget _bodyUI() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          const Text(
            "Login",
            style: TextStyle(
              color: Color.fromARGB(255, 36, 143, 120),
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),
          const Text("Please enter your details"),

          const SizedBox(height: 30),
          const Text(
            "Your email",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 2),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                labelText: "Enter your email",
                suffixIcon: Icon(Icons.email),
              ),
            ),
          ),

          const SizedBox(height: 20),
          const Text("Password", style: TextStyle(fontWeight: FontWeight.bold)),

          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 2),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                labelText: "Enter your password",
                suffixIcon: Icon(Icons.visibility_off),
              ),
            ),
          ),

          const SizedBox(height: 20),

          const SizedBox(height: 10),

          const SizedBox(height: 50),

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
                "Login",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
          ),

          SizedBox(
            height: 60,
            width: double.infinity,
            child: Center(child: Text("Don't have an account?")),
          ),

          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },

              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 30),
                padding: EdgeInsets.symmetric(horizontal: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                backgroundColor: (const Color.fromARGB(255, 204, 228, 225)),
              ),

              child: Text(
                "Register",
                style: TextStyle(fontSize: 15, color: Colors.teal),
              ),
            ),
          ),

          SizedBox(
            height: 50,
            width: double.infinity,
            child: Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgotPage()),
                  );
                },

                style: ElevatedButton.styleFrom(
                  minimumSize: Size(50, 30),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  backgroundColor: (const Color.fromARGB(255, 243, 243, 243)),
                ),

                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    fontSize: 15,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
