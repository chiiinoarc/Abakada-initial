import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  final String role;

  RegisterScreen({required this.role});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Create Your Account")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text("Register as a $role", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            // FIRST NAME INPUT FIELD
            TextField(
              decoration: InputDecoration(
                labelText: "First Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            // LAST NAME INPUT FIELD
            TextField(
              decoration: InputDecoration(
                labelText: "Last Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            // USERNAME INPUT FIELD
            TextField(
              decoration: InputDecoration(
                labelText: "Username",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            // EMAIL INPUT FIELD
            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            // PASSWORD INPUT FIELD
            TextField(
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            // CONFIRM PASSWORD INPUT FIELDA
            TextField(
              decoration: InputDecoration(
                labelText: "Confirm Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle registration
              },
              child: Text("Let's Begin!"),
            ),
          ],
        ),
      ),
    );
  }
}
