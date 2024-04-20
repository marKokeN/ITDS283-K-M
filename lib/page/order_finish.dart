//import 'package:app_whaletreat/main.dart';
// import 'package:app_whaletreat/page/home_page.dart';
import 'package:app_whaletreat/firebase_options.dart';
import 'package:app_whaletreat/main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';


void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MaterialApp(
    // Or WidgetsApp
    home: Review_Page(),
  ));
}

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   try {
//     await Firebase.initializeApp();
//     runApp(const MaterialApp(
//     // Or WidgetsApp
//     home: Review_Page()));
//   } catch (e) {
//     print('Error initializing Firebase: $e');
//   }
// }


class Review_Page extends StatefulWidget {
  const Review_Page({super.key});

  @override
  _ReviewPageState createState() => _ReviewPageState();
}

class _ReviewPageState extends State<Review_Page> {
  int _rating = 0; // Initialize rating to 0
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

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
                child: const Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 92, 203, 255),
                      // child: Icon(Icons.people, color: Colors.white),
                      radius: 50,
                      backgroundImage: AssetImage('assets/pic7.jpg'),
                    ),
                    Text(
                      'John Park',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                child: const Row(children: [
                  Text('Rating the driver'),
                ]),
              ),
              const SizedBox(height: 20),
              RatingWidget(
                onRatingChanged: (rating) {
                  setState(() {
                    _rating = rating; // Update rating
                  });
                },
              ),
              SizedBox(height: 10),
              Text(
                'Rating: $_rating', // Show the current rating
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 200),
              ElevatedButton(
                onPressed: () {
                 // Handle login functionality
                  _firestore.collection('rating').add({
                    'driver_name': 'John Park', // You can replace this with the actual driver name
                    'rating': _rating,
                    'timestamp': Timestamp.now()
                  }).then((value){
                      Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                    (route) => false,
                  );
                  }).catchError((error){
                     print('Error saving rating: $error');
                  });
      
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(144, 214, 126, 25),
                  minimumSize: Size(320, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Finish',
                  style: TextStyle(
                    color: Colors.white,
                  ),
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

class RatingWidget extends StatefulWidget {
  final ValueChanged<int> onRatingChanged;

    const RatingWidget({super.key, 
    required this.onRatingChanged,
  }) ;

  @override
  _RatingWidgetState createState() => _RatingWidgetState();
}

class _RatingWidgetState extends State<RatingWidget> {
  int _rating = 0;
  //  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(5, (index) {
        final int rating = index + 1;
        return GestureDetector(
          onTap: () {
            setState(() {
              _rating = rating;
            });
            widget.onRatingChanged(_rating);
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 92, 203, 255),
                child: Icon(
                  rating <= _rating ? Icons.star : Icons.star_border_outlined,
                  color: Color.fromARGB(255, 255, 233, 87),
                ),
                radius: 35,
              ),
            ],
          ),
        );
      }),
    );
  }
}








 // Container(
              //   child: const Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     children: [
              //       Column(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: <Widget>[
              //           CircleAvatar(
              //             backgroundColor: Color.fromARGB(255, 92, 203, 255),
              //             child: Icon(Icons.star_border_outlined,
              //                 color: Color.fromARGB(255, 255, 233, 87)),
              //             radius: 35,
              //           ),
              //         ],
              //       ),

              //       Column(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: <Widget>[
              //           CircleAvatar(
              //             backgroundColor: Color.fromARGB(255, 92, 203, 255),
              //             child: Icon(Icons.star_border_outlined,
              //                 color: Color.fromARGB(255, 255, 233, 87)),
              //             radius: 35,
              //           ),
              //         ],
              //       ),

              //       Column(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: <Widget>[
                        
              //           CircleAvatar(
              //             backgroundColor: Color.fromARGB(255, 92, 203, 255),
              //             child: Icon(Icons.star_border_outlined,
              //                 color: Color.fromARGB(255, 255, 233, 87)),
              //             radius: 35,
              //           ),
              //         ],
              //       ),

              //       Column(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: <Widget>[
              //           CircleAvatar(
              //             backgroundColor: Color.fromARGB(255, 92, 203, 255),
              //             child: Icon(Icons.star_border_outlined,
              //                 color: Color.fromARGB(255, 255, 233, 87)),
              //             radius: 35,
              //           ),
              //         ],
              //       ),
                  
              //       Column(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
                      
              //           CircleAvatar(
              //             backgroundColor: Color.fromARGB(255, 92, 203, 255),
              //             child: Icon(Icons.star_border_outlined,
              //                 color: Color.fromARGB(255, 255, 233, 87)),
              //             radius: 35,
              //           ),
              //         ],
              //       ),     
                  
              //     ],
              //   ),

              // ),