import 'package:app_whaletreat/main.dart';
import 'package:app_whaletreat/page/home_page.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

//import 'package:flutter/material.flutter.dart';
void main() {
  runApp(const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       title: 'WhaleTreat Login', // Set app title (optional)
      theme: ThemeData(
        //scaffoldBackgroundColor: const Color.fromARGB(173, 24, 241, 241), // Set background color
      ),
      home: const LoginPage(), // Ensure const for widget immutability
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //String _username=  '';
  //String _password = '';

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      // appBar: AppBar(
      //   title: const Text('WhaleTreat login'),
      // ),
      body: Container(
  color: const Color.fromARGB(174, 24, 241, 241), // Set background color
  child: Center(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Text(
            'WHALETREAT',
            style: TextStyle(fontSize: 30),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: _usernameController,
            decoration: const InputDecoration(
              labelText: 'Username',
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)
              )
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: _passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: 'Password',
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)
              )
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TextButton(
                onPressed: () {
                  // Handle forgot password functionality
                },
                child: const Text('Forgot Password?'),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('New User?'),
                  TextButton(
                    onPressed: () {
                      // Handle sign up functionality
                    },
                    child: const Text('Sign Up'),
                  )
                ],
              )
            ],
          ),
          ElevatedButton(
            onPressed: () {
              // Handle login functionality
              // Navigator.push(
              //   context, 
              //   MaterialPageRoute(builder: (context) => MyHomePage()),
              // );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(144, 214, 126, 1),
            ),
            child: const Text('Login'),
          ),
        ],
      ),
    ),
  ),
),

    );
  }
}




// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key}) : super(key: key);

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final TextEditingController _usernameController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('WhaleTreat Login'),
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               const Text(
//                 'WHALETREAT',
//                 style: TextStyle(fontSize: 30),
//               ),
//               const SizedBox(height: 20),
//               TextField(
//                 controller: _usernameController,
//                 decoration: const InputDecoration(
//                   labelText: 'Username',
//                 ),
//               ),
//               const SizedBox(height: 10),
//               TextField(
//                 controller: _passwordController,
//                 obscureText: true,
//                 decoration: const InputDecoration(
//                   labelText: 'Password',
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   TextButton(
//                     onPressed: () {
//                       // Handle forgot password functionality
//                     },
//                     child: const Text('Forgot Password?'),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {
//                       // Handle login functionality
//                     },
//                     child: const Text('Login'),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 20),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   const Text('New User?'),
//                   TextButton(
//                     onPressed: () {
//                       // Handle sign up functionality
//                     },
//                     child: const Text('Sign Up'),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
