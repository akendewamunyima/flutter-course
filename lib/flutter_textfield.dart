import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

void main() {
  // runapp method
  runApp(const MosheEntryWidget());
}

// Entry Widget
class MosheEntryWidget extends StatelessWidget {
  // ignore: use_super_parameters
  const MosheEntryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Moshe Application",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green, useMaterial3: false),
      home: MosheHomePage(),
    );
  }
}

class MosheHomePage extends StatefulWidget {
  // ignore: use_super_parameters
  const MosheHomePage({Key? key}) : super(key: key);

  @override
  State<MosheHomePage> createState() => _MosheHomePageState();
}

class _MosheHomePageState extends State<MosheHomePage> {
  // username controller
  final TextEditingController _usernameController = TextEditingController();
  // password controller
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Moshe Application")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                labelText: "User Name",
                hintText: "Enter User Name",
                border: OutlineInputBorder(),
              ),
              onChanged: (text) {
                print("Text changed: $text");
              },
            ),
          ),
          //This is password
          Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                labelText: "Enter your password",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          //This is a button
          ElevatedButton(
            onPressed: () {
              String username = _usernameController.text;
              String password = _passwordController.text;
              print("Username: $username");
              print("Password: $password");
            },
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}
