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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Moshe Application")),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            height: 100,
            child: Text(
              "Welcome to Moshe's App! Lojng hsgsh jsjsb  xjxshv xsjxhjs uhgs lahsg jxgxyh hxbxwhyw gahxhwxvhn jxxhxngxw",
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          RichText(
            text: TextSpan(
              text: "Dont have an account? ",
              style: TextStyle(fontSize: 20, color: Colors.black),
              children: [
                WidgetSpan(
                  child: Icon(Icons.account_circle, color: Colors.blue),
                ),
                TextSpan(
                  text: " Sign Up",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // Handle sign up tap
                      print("Signed Up Tapped");
                    },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
