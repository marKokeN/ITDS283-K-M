import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    // Or WidgetsApp
    home: Follow_Page(),
  ));
}

class Follow_Page extends StatelessWidget {
  const Follow_Page({super.key});

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
                height: 500, // Adjust the height according to your requirement
                width: 650, // Adjust the width according to your requirement
                decoration: const BoxDecoration(
                    //borderRadius: BorderRadius.circular(20.0),
                    color: Color.fromARGB(255, 175, 176, 177)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 20),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                child: const Row(children: [
                  Text('Time: 15.00 - 15.15'),
                ]),
              ),
              const SizedBox(height: 20),
              Container(
                child: const Row(children: [
                  Text('Status: Delivering to you'),
                ]),
              ),
              const SizedBox(height: 20),
              Container(
                child: const Column(children: [
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 92, 203, 255),
                    child: Icon(Icons.food_bank, color: Colors.white),
                  ),
                  Text(
                    'Driver name',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ]),
              ),
              const SizedBox(height: 20),

              Container(
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly, // Adjust as needed
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        MaterialButton(
                          onPressed: () {},
                          color: const Color.fromARGB(255, 92, 203, 255),
                          textColor: Colors.white,
                          padding: const EdgeInsets.all(16),
                          shape: const CircleBorder(),
                          child: const Icon(Icons.phone, size: 24),
                        ),
                        const SizedBox(height: 10),
                        const Text('Call'),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        MaterialButton(
                          onPressed: () {},
                          color: const Color.fromARGB(255, 92, 203, 255),
                          textColor: Colors.white,
                          padding: const EdgeInsets.all(16),
                          shape: const CircleBorder(),
                          child: const Icon(Icons.chat_bubble,
                              size: 24), // Change to your desired icon
                        ),
                        const SizedBox(height: 10),
                        const Text('Chat'),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
