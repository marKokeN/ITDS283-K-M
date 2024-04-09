import 'package:flutter/material.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        leading: IconButton(
          icon:Icon(Icons.arrow_back) ,
          onPressed: (){
            Navigator.of(context).pop();
          },
          ),
        title: Text('Dining'),
        backgroundColor: const Color.fromARGB(174,24, 241, 241),
        shape: const RoundedRectangleBorder(
          borderRadius:BorderRadius.vertical(
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