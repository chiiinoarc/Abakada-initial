import 'package:flutter/material.dart';

class LoginModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)), 
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
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
          SizedBox(height: 10),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Checkbox(value: false, onChanged: (value) {
                //SOME BACK-END SHIT RIGHT HERE WHEN THE CHECKBOX VALUE IS TRUE OR FALSE
              }),
              Text("Remember Me"),
            ],
          ),
          SizedBox(height: 10),
          //LOGIN BUTTON
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF6F4BD8), 
              padding: EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25), 
              ),
            ),
            child: Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold, color:Color.fromARGB(255, 218, 203, 225)),
            ),
          ),
          
          SizedBox(height: 10),
          Center(
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Forgot your password?",
                style: TextStyle(color:  Color(0xFF8E44AD)), // Purple text
              ),
            ),
          ),
        ],
      ),
    );
  }
}
