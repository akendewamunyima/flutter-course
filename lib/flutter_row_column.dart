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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text("How are you"),
                Text("How are you"),
                Text("How are you"),
                Text("How are you"),
              ],
            ),
            const Text(
              "This is another column",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
