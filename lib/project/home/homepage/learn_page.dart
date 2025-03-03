import 'package:flutter/material.dart';
import 'package:flutter_ppkd/data/section_list.dart';

class LearnPage extends StatelessWidget {
  const LearnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: const Text('Keimanan'),
        ),
        automaticallyImplyLeading: false,
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
            offset: Offset(-10, 50),
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'settings',
                child: Text('Pengaturan'),
              ),
              const PopupMenuItem<String>(
                value: 'menu',
                child: Text('Menu'),
              ),
              const PopupMenuItem<String>(
                value: 'theme',
                child: Text('Tema'),
              ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 58,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius:
                    BorderRadius.circular(10), // Ubah angkanya sesuai kebutuhan
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Keimanan',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            // const SizedBox(height: 16),
            Container(
              // color: Colors.amber,
              margin: EdgeInsets.only(left: 16),
              decoration: BoxDecoration(
                // color: Colors.amber,
                border: Border(
                  left: BorderSide(
                      color: const Color.fromARGB(255, 0, 0, 0), width: 8),
                ),
              ),

              child: Container(
                margin: EdgeInsets.only(left: 8, top: 8),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics:
                      NeverScrollableScrollPhysics(), // Agar tidak scroll dalam Column
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4, // 5 kolom
                    crossAxisSpacing: 2, // Jarak antar kolom
                    mainAxisSpacing: 2, // Jarak antar baris
                  ),
                  itemCount: sectionQuizzesList.length, // Total item
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(4),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          sectionQuizzesList[index].title,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
