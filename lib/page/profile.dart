import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.person,
                  size: 32,
                ),
                const SizedBox(width: 8),
                const Text(
                  "Profile Saya",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 36),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                color: const Color.fromARGB(255, 109, 109, 109),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.email,
                    size: 32,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Email",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ]),
            ),
            const SizedBox(height: 16),
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const Text(
                      "Nama: Muhammad Dwi Kurniawan",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 95, 95, 95),
                      ),
                    ),
                    // button("Budi"),
                    button("Joko"),
                    button("gigi"),
                    button("gigi"),
                    button(1),
                    button(3939293)
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Text button(dynamic params1) {
    return Text(
      params1.toString(),
      style: TextStyle(
        fontSize: 18,
        color: Color.fromARGB(255, 95, 95, 95),
      ),
    );
  }
}
