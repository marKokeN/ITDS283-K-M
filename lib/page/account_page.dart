import 'package:flutter/material.dart';

class account_Page extends StatelessWidget {
  const account_Page ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
  backgroundColor: const Color.fromARGB(174, 24, 241, 241), // Set the background color directly
  toolbarHeight: 100, // Adjust the height according to your requirement
  title: const Row(
    children: [
      SizedBox(width: 20),
      CircleAvatar(
        backgroundImage: AssetImage('assets/ing.jpg'),
        radius: 40,
      ),
      SizedBox(width: 20),
      Text(
        'Whaletreat_dev',
        style: TextStyle(
          fontSize: 28,
          //fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    ],
  ),
),


      
      body: Center(
        child: SingleChildScrollView(
          reverse: true,
          padding: EdgeInsets.all(30),
          child: Column(
        children: [
          SizedBox(height: 5),
          SizedBox(height: 30),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     Container(
          //       height: 30,
          //       width: 150,
          //       decoration: const BoxDecoration(
          //         color: Color.fromARGB(255, 92, 203, 255),
          //         borderRadius: BorderRadius.all(Radius.circular(8.0)),
          //       ),
          //       child: const Row(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         crossAxisAlignment: CrossAxisAlignment.center,
          //         children: [
          //           Text("Chat"),
          //         ],
          //       ),
          //     ),
          //     Container(
          //       height: 30,
          //       width: 150,
          //       decoration: const BoxDecoration(
          //         color: Color.fromARGB(255, 92, 203, 255),
          //         borderRadius: BorderRadius.all(Radius.circular(8.0)),
          //       ),
          //       child: const Row(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         crossAxisAlignment: CrossAxisAlignment.center,
          //         children: [
          //           Text("Notification"),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
          SizedBox(height: 30),
          Container(
            height: 60, // Adjust the height according to your requirement
            width: 400, // Adjust the width according to your requirement
            decoration: const BoxDecoration(
                //borderRadius: BorderRadius.circular(20.0),
                 color: Color.fromARGB(255, 92, 203, 255)
                 ),
                 child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    // CircleAvatar(
                    // child: Icon(Icons.airplane_ticket_outlined,color: Colors.black),
                    // backgroundColor: Colors.white,
                    // ),
                   
                    Text(
                      'My Account',
                      style: TextStyle(
          fontSize: 16,
         // fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
                    ),
                  ],
                  ),
          ),
           SizedBox(height: 20),
          Container(
            height: 60, // Adjust the height according to your requirement
            width: 400, // Adjust the width according to your requirement
            decoration: const BoxDecoration(
                //borderRadius: BorderRadius.circular(20.0),
                 color: Colors.grey),
                   child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    //  CircleAvatar(
                    // child: Icon(Icons.message,color: Colors.black),
                    // backgroundColor: Colors.white,
                    // ),
                   
                    Text(
                      'Membership',
                      style: TextStyle(
          fontSize: 16,
          //fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
                    ),
                  ],
                  ),
          ),
           SizedBox(height: 20),
          Container(
            height: 60, // Adjust the height according to your requirement
            width: 400, // Adjust the width according to your requirement
            decoration: const BoxDecoration(
                //borderRadius: BorderRadius.circular(20.0),
                 color: Color.fromARGB(255, 92, 203, 255)),
            child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    // CircleAvatar(
                    // child: Icon(Icons.message,color: Colors.black),
                    // backgroundColor: Colors.white,
                    // )
                    Text(
                      'Reward',
                      style: TextStyle(
          fontSize: 16,
         // fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
                    ),
                  ],
                  ),
          ), SizedBox(height: 20),
          Container(
            height: 60, // Adjust the height according to your requirement
            width: 400, // Adjust the width according to your requirement
            decoration: const BoxDecoration(
                //borderRadius: BorderRadius.circular(20.0),
                 color: Colors.grey),
            child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //   CircleAvatar(
                    // child: Icon(Icons.airplane_ticket,color: Colors.black),
                    // backgroundColor: Colors.white,
                    // ),
                    Text(
                      'Purchase',
                      style: TextStyle(
          fontSize: 16,
          //fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
                    ),
                  ],
                  ),
          ), 
          SizedBox(height: 20),
         
          SizedBox(height: 20),
         
           SizedBox(height: 20),
         
        ],
      ), 
        ),
      ) 

      
     
      
    );
  }
}





