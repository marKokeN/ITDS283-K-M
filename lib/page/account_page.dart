import 'package:flutter/material.dart';

class account_Page extends StatelessWidget {
  const account_Page ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon:Icon(Icons.arrow_back) ,
          onPressed: (){
            Navigator.of(context).pop();
          },
          ),
        title: Text ('Account'),
        backgroundColor: const Color.fromARGB(174,24, 241, 241),
        shape: const RoundedRectangleBorder(
          borderRadius:BorderRadius.vertical(
            bottom: Radius.circular(30),
            
          ),
           ),
           
      ),
      
      body: Center(child: Text('Account',style: TextStyle(fontSize: 60),),),
      
    );
  }
}