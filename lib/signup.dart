import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Center(child: Text("Signup")),
              TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text("Back"))
            ],
          ),
        ),
      ),
    );
  }
}
