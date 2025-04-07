import 'package:flutter/material.dart';
import 'form.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Light background
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align content to the left
                children: [
                  // Logo (Left-Aligned)
                  Container(
                    alignment: Alignment.centerLeft, // Ensure it stays left
                    child: Image.asset(
                      'assets/images/logost.png',
                      height: 100, // Increased size
                      width: 120, // Increased size
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 20), // Spacing
                  // Email Field
                  Text(
                    "Email",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "name@example.com",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[100],
                    ),
                  ),
                  SizedBox(height: 15),

                  // Password Field
                  Text(
                    "Password",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "********",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[100],
                    ),
                  ),
                  SizedBox(height: 40),

                  // Login Button
                  // Login Button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyFormPage(),
                        ), // Navigate to FormPage
                      );
                    },
                    child: Text(
                      "Log in",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
