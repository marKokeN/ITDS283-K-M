import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    // Or WidgetsApp
    home: Foodstore_Page(),
  ));
}

class Foodstore_Page extends StatelessWidget {
  const Foodstore_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          backgroundColor: const Color.fromARGB(174, 24, 241, 241),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
        ),
        body: Center(
            child: SingleChildScrollView(
          reverse: true,
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Container(
                height: 200, // Adjust the height according to your requirement
                width: 1000, // Adjust the width according to your requirement
                decoration: const BoxDecoration(
                    //borderRadius: BorderRadius.circular(20.0),
                    color: Color.fromARGB(255, 175, 176, 177)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 20),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.food_bank, color: Colors.black),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'K** Kelefvalion St.',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                child: const Row(children: [
                  Text('Recommend'),
                ]),
              ),
              const SizedBox(height: 20),

              Container(
                  height: 200, // Adjust the height according to your requirement
                  width: 200, // Adjust the width according to your requirement
                  decoration: const BoxDecoration(
                      //borderRadius: BorderRadius.circular(20.0),
                      color: Color.fromARGB(255, 92, 203, 255)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 20),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.food_bank,
                            color: Colors.black),
                      ),
                      SizedBox(width: 20),
                      Text(
                        'Menu name',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

              Container(
                child: const Row(children: [
                  Text('Menu'),
                ]),
              ),
              const SizedBox(height: 20),

              Container(
                  height: 200, // Adjust the height according to your requirement
                  width: 200, // Adjust the width according to your requirement
                  decoration: const BoxDecoration(
                      //borderRadius: BorderRadius.circular(20.0),
                      color: Color.fromARGB(255, 92, 203, 255)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 20),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.food_bank,
                            color: Colors.black),
                      ),
                      SizedBox(width: 20),
                      Text(
                        'Menu name',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                
            ],
          ),
        )));
  }
}
