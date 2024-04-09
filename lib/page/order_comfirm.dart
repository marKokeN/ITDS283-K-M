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
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
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
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: const Column(
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
                      width: 150,
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
          )),
          Container(
              child: const Row(
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
          Row(children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black), color: Colors.grey),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Text(
                    '1',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.blue),
                  ),
                ],
              ),
              
            ),
            Container(
                child: Column(
              children: [
                SizedBox(width: 10),
                Text('Name'),
                SizedBox(width:10),
                Text('Price'),
              ],
            ))
          ]),
           SizedBox(height: 10,),
          Row(children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black), color: Colors.grey),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Text(
                    '1',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.blue),
                  ),
                ],
              ),
              
            ),
            Container(
                child: Column(
              children: [
                SizedBox(width: 10),
                Text('Name'),
                SizedBox(width:10),
                Text('Price'),
              ],
            ),
            ),
          ]
          ),
           SizedBox(height: 10,),
          Row(children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black), color: Colors.grey),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Text(
                    '1',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.blue),
                  ),
                ],
              ),
              
            ),
            Container(
                child: Column(
              children: [
                SizedBox(width: 10),
                Text('Name'),
                SizedBox(width:10),
                Text('Price'),
              ],
            ))
          ]),
          Container(),
          Container(),
          Container(),
          Container(),
          Container(
              child: const Divider(
            color: Colors.black,
          )),
        ],
      ),
    );
  }
}
