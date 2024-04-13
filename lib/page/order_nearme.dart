import 'package:flutter/material.dart';
//order_nearme.dart

void main() {
  runApp(const MaterialApp(
    // Or WidgetsApp
    home: Nearme_Page(),
  ));
}

class Nearme_Page extends StatelessWidget {
  const Nearme_Page({super.key});

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
          title: const Text('Near me'),
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
                const SizedBox(height: 5),
                const SizedBox(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                ),
                const SizedBox(height: 30),
                Container(
                  height: 50, // Adjust the height according to your requirement
                  width: 400, // Adjust the width according to your requirement
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
                        'K**',
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
                  height: 50, // Adjust the height according to your requirement
                  width: 400, // Adjust the width according to your requirement
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
                        'M*D*****',
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
                  height: 50, // Adjust the height according to your requirement
                  width: 400, // Adjust the width according to your requirement
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
                        'B***** K***',
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
                  height: 50, // Adjust the height according to your requirement
                  width: 400, // Adjust the width according to your requirement
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
                        'S*****',
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
                  height: 50, // Adjust the height according to your requirement
                  width: 400, // Adjust the width according to your requirement
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
                        'P***** L****',
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
                  height: 50, // Adjust the height according to your requirement
                  width: 400, // Adjust the width according to your requirement
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
                        'P**** H**',
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
                  height: 50, // Adjust the height according to your requirement
                  width: 400, // Adjust the width according to your requirement
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
                        'K******',
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
          ),
        ));
  }
}

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  // ignore: unused_field
  String _searchText = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search..",
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        onChanged: (text) {
          setState(() {
            _searchText = text;
          });
        },
      ),
    );
  }
}