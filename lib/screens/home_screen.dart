import 'package:flutter/material.dart' hide ModalBottomSheetRoute;
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart' as custom_bottom_sheet;
import '../widgets/login_modal.dart';
import '../widgets/register_choice_modal.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20), // Add horizontal padding for margin
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch, // Ensures buttons stretch
          children: [
            Text(
              "ABaKaDA",
              textAlign: TextAlign.center, // Center align text
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              "Learn Filipino,\nLive the Language!",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            SizedBox(
              width: double.infinity, // Makes button stretch to full width
              child: ElevatedButton(
                onPressed: () {
                  custom_bottom_sheet.showBarModalBottomSheet(
                    context: context,
                    builder: (context) => LoginModal(),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 16), // Adjust height
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Adjust if needed
                  ),
                ),
                child: Text("Log in"),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: double.infinity, // Makes button stretch to full width
              child: ElevatedButton(
                onPressed: () {
                  custom_bottom_sheet.showBarModalBottomSheet(
                    context: context,
                    builder: (context) => RegisterChoiceModal(),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text("Sign Up"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
