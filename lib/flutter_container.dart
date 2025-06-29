import 'package:flutter/material.dart';

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
      body: Container(
        height: 100,
        width: 350,
        alignment: Alignment.center,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(40),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text("Am Working", style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
