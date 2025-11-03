import 'package:flutter/material.dart';
import 'Registartion.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
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
            "Create account",
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
          const Text(
            "Repeat password",
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
                labelText: "Repeat password",
                suffixIcon: Icon(Icons.visibility_off),
              ),
            ),
          ),

          const SizedBox(height: 50),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                debugPrint("i was pressed");
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
                "Register",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
          ),

          SizedBox(
            height: 60,
            width: double.infinity,
            child: Center(child: Text("Already have an account?")),
          ),

          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegistrationPage()),
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
                "Login",
                style: TextStyle(fontSize: 15, color: Colors.teal),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
