import 'package:app_whaletreat/page/account_page.dart';
import 'package:app_whaletreat/page/alert.dart';
import 'package:app_whaletreat/page/home_page.dart';
//import 'package:app_whaletreat/page/order_food.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    // Or WidgetsApp
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  final Screen = [
    Homepage(),
    Alert_Page(),
    account_Page(),
   // Order_Food_Page(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         // SearchBar(),
          Expanded(child: Screen[currentIndex]),
          

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
            // showSelectedLabels: false,
            // showUnselectedLabels: false,
            // selectedFontSize: 20,
            // unselectedFontSize: 10,
            currentIndex: currentIndex,
            onTap: (index) => setState(() => currentIndex = index),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.restaurant),
                  label: 'Dining',
                  backgroundColor: Colors.blue),
              // BottomNavigationBarItem(
              // icon:Icon(Icons.account_balance_wallet),
              // label: 'Wallet',
              // backgroundColor: Colors.blue
              // ),
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

    // appBar: AppBar(
      //   leading: IconButton(
      //     icon:Icon(Icons.arrow_back) ,
      //     onPressed: (){
      //       Navigator.of(context).pop();
      //     },
      //     ),
      //   title: const Text('Alert'),
      //   backgroundColor: const Color.fromARGB(174,24, 241, 241),
      //   shape: const RoundedRectangleBorder(
      //     borderRadius:BorderRadius.vertical(
      //       bottom: Radius.circular(30),
      //     ),
      //      ),
      // ),

// class MySearchWidget extends StatefulWidget {
//   const MySearchWidget({super.key});

//   @override
//   State<MySearchWidget> createState() => _MySearchWidgetState();
// }

// class _MySearchWidgetState extends State<MySearchWidget> {
//   final TextEditingController _searchController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 200,
//       padding: const EdgeInsets.symmetric(horizontal: 16.0),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10.0),
//         color: Colors.grey.shade200,
//       ),
//       child: Row(
//         children: [
//           const Icon(Icons.search),
//           const SizedBox(width: 10.0),
//           Expanded(
//             child: TextField(
//               controller: _searchController,
//               decoration: const InputDecoration(
//                 hintText: 'Search...',
//                 border: InputBorder.none, // removes default border
//               ),
//               onChanged: (value) {
//                 // Handle search updates here (e.g., filter data)
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

