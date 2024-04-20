import 'package:app_whaletreat/page/order_food.dart';
//import 'package:app_whaletreat/page/order_nearme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


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
        
        // leading: IconButton(
        //   icon:Icon(Icons.arrow_back) ,
        //   onPressed: (){
        //     Navigator.of(context).pop();
        //   },
        //   ),
        // title: Text('Dining'),
        backgroundColor: const Color.fromARGB(174,24, 241, 241),
        shape: const RoundedRectangleBorder(
          borderRadius:BorderRadius.vertical(
             bottom: Radius.circular(30),
          ),
           ),
      ),
    body: Center(
  child: SingleChildScrollView(
    reverse: true,
    padding: EdgeInsets.all(30),
    child: Column(
      children: [
         SearchBar(),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            
            Container(
              height: 50,
              width: 170,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 92, 203, 255),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              child: const Column(
               mainAxisAlignment: MainAxisAlignment.center,
               
                children: [
                  Row(
                    children: [
                      SizedBox(width: 20,),
                      Icon(Icons.wallet),
                      SizedBox(width: 20),
                    
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                  Text("Balance"),
                  Text('550.0฿'),
                        ],
                      )
                    ]  
                  ),
                  
                  
                ],
              ),
            ),
            Container(
              height: 50,
              width: 170,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 92, 203, 255),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              child: const Column(
               mainAxisAlignment: MainAxisAlignment.center,
               
                children: [
                  Row(
                    children: [
                      SizedBox(width: 20,),
                      Icon(Icons.control_point),
                      SizedBox(width: 20),
                    
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                  
                  Text('500 Pt'),
                        ],
                      )
                    ]  
                  ),
                  
                  
                ],
              ),
            ),
            
          ],
        ),
        
       // SizedBox(height: 30),
        SizedBox(height: 30),
Container(
  child: SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => const Order_Food_Page()),
                );
              },
              color: Color.fromARGB(255, 92, 203, 255),
              textColor: Colors.white,
              padding: EdgeInsets.all(16),
              shape: CircleBorder(),
              child: Icon(Icons.fastfood, size: 24),
            ),
            SizedBox(height: 10),
            Text('Food'),
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
              child: Icon(Icons.local_cafe, size: 24),
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
              child: Icon(Icons.cake, size: 24),
            ),
            SizedBox(height: 10),
            Text('Treat'),
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
              child: Icon(Icons.more_horiz, size: 24),
            ),
            SizedBox(height: 10),
            Text('Other'),
          ],
        ),
      ],
    ),
  ),
),

        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              Text('Suggestion'),
              Icon(Icons.arrow_forward),
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          height: 200,
          width: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.blue,
          ),
                child: ClipRRect(
    borderRadius: BorderRadius.circular(20.0), // Same as the container's border radius
    child: Image(
      image: AssetImage('assets/pic5.jpg'), 
      fit: BoxFit.cover,
    ),
  ),
        ),
        SizedBox(height: 30),
        Container(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              Text('Recently Ordered'),
              Icon(Icons.arrow_forward),
            ],
          ),
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.blue,
          ),
          child: ClipRRect(
    borderRadius: BorderRadius.circular(20.0), // Same as the container's border radius
    child: Image(
      image: AssetImage('assets/pic2.jpg'), 
      fit: BoxFit.cover,
    ),
  ),
        ),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.blue,
          ),
                child: ClipRRect(
    borderRadius: BorderRadius.circular(20.0), // Same as the container's border radius
    child: Image(
      image: AssetImage('assets/pic3.jpg'), 
      fit: BoxFit.cover,
    ),
  ),
        ),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.blue,
          ),
                   child: ClipRRect(
    borderRadius: BorderRadius.circular(20.0), // Same as the container's border radius
    child: Image(
      image: AssetImage('assets/pic4.jpg'), 
      fit: BoxFit.cover,
    ),
  ),
        ),
          ],
        )
         
      ],
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


final GoRouter _router =GoRouter(
  routes: <RouteBase>[
    GoRoute(path: '/',
    builder: (BuildContext context,GoRouterState state ){
      return const Homepage();
    }
    )
  ]
  );

class Goback extends StatelessWidget {
  const Goback({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}