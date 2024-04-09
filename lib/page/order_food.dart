import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    // Or WidgetsApp
    home: Order_Food_Page(),
  ));
}

class Order_Food_Page extends StatelessWidget {
  const Order_Food_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order_Food'),
        backgroundColor: const Color.fromARGB(174, 24, 241, 241),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 5),
          SearchBar(),
          SizedBox(height: 30),
          Container(
            height: 70,
            width: 400,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 92, 203, 255),
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.map),
                Text("12/345 Kelefvalion St."),
              ],
            ),
          ),
        
          SizedBox(height: 50),
          Container(
            child: 
          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceEvenly, // Adjust as needed
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  MaterialButton(
                    onPressed: () {},
                    color: Color.fromARGB(255, 92, 203, 255),
                    textColor: Colors.white,
                    padding: EdgeInsets.all(16),
                    shape: CircleBorder(),
                    child: Icon(Icons.near_me, size: 24),
                  ),
                  SizedBox(height: 10),
                  Text('Near Me'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  MaterialButton(
                    onPressed: () {},
                    color: Color.fromARGB(255, 92, 203, 255),
                    textColor: Colors.white,
                    padding: EdgeInsets.all(16),
                    shape: CircleBorder(),
                    child: Icon(Icons.airplane_ticket,
                        size: 24), // Change to your desired icon
                  ),
                  SizedBox(height: 10),
                  Text('Promotion'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  MaterialButton(
                    onPressed: () {},
                    color: Color.fromARGB(255, 92, 203, 255),
                    textColor: Colors.white,
                    padding: EdgeInsets.all(16),
                    shape: CircleBorder(),
                    child: Icon(Icons.apple,
                        size: 24), // Change to your desired icon
                  ),
                  SizedBox(height: 10),
                  Text('Healthy food'),
                ],
              ),
            ],
          ),
          ),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.centerLeft,
            child: const Row(
              children: [
              Text('Suggestion'),
              Icon(Icons.forward),
              ],
            ),
          ),
          SizedBox(height: 40),
         Container(
  height: 200, // Adjust the height according to your requirement
  width: 400, // Adjust the width according to your requirement
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20.0),
    color: Colors.blue
  ),
)
        ],
        
      ),
      

      
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            backgroundColor: const Color.fromARGB(173, 24, 241, 241),
            type: BottomNavigationBarType.fixed,
            iconSize: 30,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.restaurant),
                  label: 'Dining',
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications),
                  label: 'Alert',
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Account',
                  backgroundColor: Colors.blue),
            ],
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
          ),
        ),
      ),

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
      width: 450,
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







// //import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// void main() {
//   runApp(
//     MyApp(
//     ));
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Order Food', // Set app title (optional)
//       theme: ThemeData(
//         scaffoldBackgroundColor: const Color.fromARGB(174,231,255,255), // Set background color
//       ),
//       home: const Order_Food(), 
//     );
//   }
// }

// class Order_Food extends StatefulWidget {
//   const Order_Food({super.key});
//   @override
//   State<Order_Food> createState() => _Order_FoodState();
// }

// class _Order_FoodState extends State<Order_Food> {
//   @override
//   Widget build(BuildContext context) {
//      return Scaffold(
//       appBar: AppBar(
//         title: Text('Order - Food'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.search),
//             onPressed: () => print('Search tapped'),
//           ),
//         ],
//       ),
//       body: const Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text('12/345 Kelefvalion St.'),
//                 Text('8'), 
//               ],
//               ),
//             SizedBox(height: 16.0),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Near me',
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//                 Row(
//                   children: [
//                     Text('Promotion'),
//                     SizedBox(width: 8.0),
//                     Text('Healthy food'),
//                   ],
//                 ),
//               ],
//             ),
//             SizedBox(height: 16.0),
//             Row(children: [
//               Text('40 Coupon(s) available'),
//             ],
//             ),
//             Spacer(),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text('Dining'),
//                 // IconButton(
//                 //   icon: Icon(Icons.notifications_none_outlined),
//                 //  onPressed: () => print('Alert tapped'),
//                 // ),
//                 // IconButton(
//                 //   icon: Icon(Icons.account_circle_outlined),
//                 //   onPressed: () => print('Account tapped'),
//                 // ),
//               ],
//             ),
//           ],
//           ),
//         ),
//      );
//   }
// }