import 'package:flutter/material.dart';

class Alert_Page extends StatelessWidget {
  const Alert_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Alert'),
        backgroundColor: const Color.fromARGB(174, 24, 241, 241),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body:Center(
        child: SingleChildScrollView(
          reverse: true,
          padding: EdgeInsets.all(30),
          child: Column(
        children: [
          SizedBox(height: 5),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 30,
                width: 150,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 92, 203, 255),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Chat"),
                  ],
                ),
              ),
              Container(
                height: 30,
                width: 150,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 92, 203, 255),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Notification"),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Container(
            height: 50, // Adjust the height according to your requirement
            width: 400, // Adjust the width according to your requirement
            decoration: const BoxDecoration(
                //borderRadius: BorderRadius.circular(20.0),
                 color: Color.fromARGB(255, 92, 203, 255)
                 ),
                 child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 20),
                    CircleAvatar(
                    child: Icon(Icons.airplane_ticket_outlined,color: Colors.black),
                    backgroundColor: Colors.white,
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Available',
                      style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
                    ),
                  ],
                  ),
          ),
           SizedBox(height: 20),
          Container(
            height: 50, // Adjust the height according to your requirement
            width: 400, // Adjust the width according to your requirement
            decoration: const BoxDecoration(
                //borderRadius: BorderRadius.circular(20.0),
                 color: Colors.grey),
                   child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 20),
                     CircleAvatar(
                    child: Icon(Icons.message,color: Colors.black),
                    backgroundColor: Colors.white,
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Available',
                      style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
                    ),
                  ],
                  ),
          ),
           SizedBox(height: 20),
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
                    child: Icon(Icons.message,color: Colors.black),
                    backgroundColor: Colors.white,
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Available',
                      style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
                    ),
                  ],
                  ),
          ), SizedBox(height: 20),
          Container(
            height: 50, // Adjust the height according to your requirement
            width: 400, // Adjust the width according to your requirement
            decoration: const BoxDecoration(
                //borderRadius: BorderRadius.circular(20.0),
                 color: Colors.grey),
            child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 20),
                      CircleAvatar(
                    child: Icon(Icons.airplane_ticket,color: Colors.black),
                    backgroundColor: Colors.white,
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Available',
                      style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
                    ),
                  ],
                  ),
          ), 
          SizedBox(height: 20),
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
                    child: Icon(Icons.alarm_sharp,color: Colors.black),
                    backgroundColor: Colors.white,
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Available',
                      style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
                    ),
                  ],
                  ),
          ), 
          SizedBox(height: 20),
          Container(
            height: 50, // Adjust the height according to your requirement
            width: 400, // Adjust the width according to your requirement
            decoration: const BoxDecoration(
                //borderRadius: BorderRadius.circular(20.0),
                 color: Colors.grey),
           child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 20),
                      CircleAvatar(
                    child: Icon(Icons.message,color: Colors.black),
                    backgroundColor: Colors.white,
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Available',
                      style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
                    ),
                  ],
                  ),
          ),
           SizedBox(height: 20),
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
                    child: Icon(Icons.message,color: Colors.black),
                    backgroundColor: Colors.white,
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Available',
                      style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
                    ),
                  ],
                  ),
          ),
        ],
      ), 
        ),
      ) 

      
     
    );
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
