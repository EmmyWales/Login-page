import 'package:flutter/material.dart';

class MyDashboard extends StatelessWidget {
  final String email, pword;
  const MyDashboard({Key? key, required this.email, required this.pword})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Dasboard"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Email Address: $email",
              style: const TextStyle(
                color: Colors.blue,
                fontSize: 16,
              ),
            ),
            Text(
              "Password: $pword",
              style: const TextStyle(
                color: Colors.blue,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
