import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    // Or WidgetsApp
    home: Review_Page(),
  ));
}

class Review_Page extends StatelessWidget {
  const Review_Page({super.key});

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
                child: const Column(children: [
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 92, 203, 255),
                    child: Icon(Icons.people, color: Colors.white),
                    radius: 50,
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
                child: const Row(children: [
                  Text('Rating the driver'),
                ]),
              ),
              const SizedBox(height: 20),
              Container(
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 92, 203, 255),
                          child: Icon(Icons.star_border_outlined,
                              color: Color.fromARGB(255, 255, 233, 87)),
                          radius: 40,
                        ),
                      ],
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 92, 203, 255),
                          child: Icon(Icons.star_border_outlined,
                              color: Color.fromARGB(255, 255, 233, 87)),
                          radius: 40,
                        ),
                      ],
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 92, 203, 255),
                          child: Icon(Icons.star_border_outlined,
                              color: Color.fromARGB(255, 255, 233, 87)),
                          radius: 40,
                        ),
                      ],
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 92, 203, 255),
                          child: Icon(Icons.star_border_outlined,
                              color: Color.fromARGB(255, 255, 233, 87)),
                          radius: 40,
                        ),
                      ],
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 92, 203, 255),
                          child: Icon(Icons.star_border_outlined,
                              color: Color.fromARGB(255, 255, 233, 87)),
                          radius: 40,
                        ),
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