//import 'package:app_whaletreat/main.dart';
// import 'package:app_whaletreat/page/home_page.dart';
import 'package:flutter/material.dart';
//import 'package:go_router/go_router.dart';

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
                          radius: 35,
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
                          radius: 35,
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
                          radius: 35,
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
                          radius: 35,
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
                          radius: 35,
                        ),
                      ],
                    ),      
                  ],
                ),

              ),
              SizedBox(height: 200),
              ElevatedButton(
                onPressed: () {
                  // Handle login functionality
                  // Navigator.push(
                  //       context, 
                  //       MaterialPageRoute(builder: (context)
                  //       =>  MyHomePage() ),
                  //       );
                 Navigator.popUntil(context, ModalRoute.withName('/'));
                },
                style: ElevatedButton.styleFrom(
                backgroundColor:  Color.fromRGBO(144,214,126,25),
                //padding: EdgeInsets.symmetric(horizontal: 90, vertical: 20),
                  minimumSize: Size(320, 50), // Set the minimum width and height
                shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Adjust the border radius to make it more square
    )
              ),
                child: const Text('Finish',style: TextStyle(
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