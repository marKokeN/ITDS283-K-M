// import 'package:app_whaletreat/login.dart';
import 'package:flutter/material.dart';
// import 'dart:io';
// import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';


class FireStorageService extends ChangeNotifier {
  FireStorageService();

  static Future<String> loadImage(BuildContext context, String imagePath) async {
    final imageUrl =
        await FirebaseStorage.instance.ref().child(imagePath).getDownloadURL();
    return imageUrl;
  }
}




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
      // backgroundImage: AssetImage('assets/ing.jpg'),
    // FutureBuilder<String>(
    //   future: _getImageUrl(),
    //    builder: (context,snapshot){
    //     if (snapshot.connectionState == ConnectionState.waiting){
    //       return CircularProgressIndicator();
    //     }else if (snapshot.hasError){
    //       return Text('Error: ${snapshot.error}');
    //     }else{
    //       return CircleAvatar(
    //                   radius: 40,
    //                   backgroundImage: NetworkImage(snapshot.data ?? ''),
    //                 );
    //     }
    //    },
    //    ),

CircleAvatar(
  radius: 40,
  backgroundImage: AssetImage('assets/ing.jpg'),

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
        //   GestureDetector(
        //     onTap:(){
        //        Navigator.push(
        //                 context, 
        //                 MaterialPageRoute(builder: (context)
        //                 => const LoginPage()  ),
        //                 );
        //     } ,
        //       child:Container(
        //     height: 60, // Adjust the height according to your requirement
        //     width: 400, // Adjust the width according to your requirement
        //     decoration: const BoxDecoration(
                 
        //          color: Color.fromARGB(255, 6, 138, 199),
        //          borderRadius: BorderRadiusDirectional.all(Radius.circular(10.0))
                 
        //          ),
        //          child: const Row(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             Text(
        //               'Login',
        //               style: TextStyle(
        //   fontSize: 16,
        //   fontWeight: FontWeight.bold,
        //   color: Colors.black,
        // ),
        //             ),
        //           ],
        //           ),
        //   ),
        //   ),
        
          SizedBox(height: 20,),
          Container(
            height: 60, // Adjust the height according to your requirement
            width: 400, // Adjust the width according to your requirement
            decoration: const BoxDecoration(
                //borderRadius: BorderRadius.circular(20.0),
                 
                 color: Color.fromARGB(255, 92, 203, 255),
                 borderRadius: BorderRadiusDirectional.all(Radius.circular(10.0))
                 
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
                 borderRadius: BorderRadiusDirectional.all(Radius.circular(10.0)),
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
                 color: Color.fromARGB(255, 92, 203, 255),
                 borderRadius: BorderRadiusDirectional.all(Radius.circular(10.0))
                 ),
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
                 borderRadius: BorderRadiusDirectional.all(Radius.circular(10.0)),
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



// class ImagePickerPage extends StatefulWidget {
//   const ImagePickerPage({super.key});

//   @override
//   State<ImagePickerPage> createState() => _ImagePickerPageState();
// }

// class _ImagePickerPageState extends State<ImagePickerPage> {
//  File? _image;
 
//   Future<void> _pickImage() async{
//     final pickImage = await ImagePicker().pickImage(source: ImageSource.gallery);
//     setState(() {
//       _image = PickedFile != null ? File(PickedFile.path):null;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }


