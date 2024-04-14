import 'package:app_whaletreat/page/order_follow.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    // Or WidgetsApp
    home: Order_Confirm(),
  ));
}

class Order_Confirm extends StatelessWidget {
  const Order_Confirm({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back),
        //   onPressed: () {
        //     Navigator.of(context).pop();
        //   },
        // ),
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
    padding: EdgeInsets.all(30),
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.location_on, size: 30),
                  SizedBox(width: 5),
                  Text(
                    "12/345 Kelefvalion St.",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Icon(Icons.arrow_forward, size: 30)
                ],
              ),
            ],
          ),
        ),
        Container(
          child: const Divider(
            color: Colors.black,
          ),
        ),
        SizedBox(height: 10),
        Container(
          child: Row(
            children: [
              SizedBox(width: 5),
              Text(
                'Summary',
                style: TextStyle(fontSize: 20),
              ),
              Icon(Icons.arrow_forward),
            ],
          ),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                color: Colors.grey,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '1',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Column(
                children: [
                  SizedBox(width: 10),
                  Text('Name'),
                  SizedBox(width: 10),
                  Text('Price'),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                color: Colors.grey,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '1',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(width: 10),
                  Text('Name'),
                  SizedBox(width: 10),
                  Text('Price'),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                color: Colors.grey,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '1',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(width: 10),
                  Text('Name'),
                  SizedBox(width: 10),
                  Text('Price'),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Food         XXX"),
            ],
          ),
        ),
        Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Delivery    XXX"),
            ],
          ),
        ),
        Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Total         XXX"),
            ],
          ),
        ),
        SizedBox(height: 10),
        Container(
          child: const Divider(
            color: Colors.black,
          ),
        ),
        Container(
          child: Row(
            children: [
              SizedBox(width: 5),
              Text(
                'Payment',
                style: TextStyle(fontSize: 20),
              ),
              Icon(Icons.arrow_forward),
            ],
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 50,
          width: 400,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 92, 203, 255),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 20),
              Icon(Icons.card_membership),
              SizedBox(width: 20),
              Text("1234"),
              SizedBox(width: 220),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
        SizedBox(height: 130),
        ElevatedButton(
          onPressed: () {
            // Handle login functionality
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Follow_Page()),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromRGBO(144, 214, 126, 25),
            minimumSize: Size(320, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Text(
            'Order',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        
      ],
    ),
  ),
),

    );
  }
}
