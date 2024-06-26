import 'package:app_whaletreat/page/order_finish.dart';
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
  height: 300,
  width: 400,
  decoration: BoxDecoration(
    color: Color.fromARGB(255, 175, 176, 177),
    borderRadius: BorderRadius.circular(20.0),
  ),
  child: Stack(
    children: [
      // Background image
      ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(
          'assets/pic8.jpg',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      ),
      // Row content
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 20),
          // Add your row content here
        ],
      ),
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
                    // child: Icon(Icons.people, color: Colors.white),
                    radius: 30,
                    backgroundImage: AssetImage('assets/pic7.jpg'),
                  ),
                  Text(
                    'John Park',
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
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  // Handle login functionality
                  Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context)
                        => const Review_Page() ),
                        );
                },
                style: ElevatedButton.styleFrom(
                backgroundColor:  Color.fromRGBO(144,214,126,25),
                //padding: EdgeInsets.symmetric(horizontal: 90, vertical: 20),
                  minimumSize: Size(320, 50), // Set the minimum width and height
                shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Adjust the border radius to make it more square
    )
              ),
                child: const Text('Confirm',style: TextStyle(
                  color: Colors.white ,
                ),)
               
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
