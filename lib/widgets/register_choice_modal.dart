import 'package:flutter/material.dart';
import '../screens/register_screen.dart';

class RegisterChoiceModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Sign up as a...", style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal,)),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RegisterScreen(role: "Teacher")),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 155, 137, 236),
              shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              padding: EdgeInsets.symmetric(vertical:16),
            ),
            child: Text(
              "Teacher",
              style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RegisterScreen(role: "Student")),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 155, 137, 236),
              shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              padding: EdgeInsets.symmetric(vertical:16),
            ),
            child: Text(
              "Student",
              style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
