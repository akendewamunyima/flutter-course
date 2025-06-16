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
      appBar: AppBar(
        title: const Text("Moshe Application"),
        backgroundColor: Color.fromARGB(255, 45, 189, 96),
        elevation: 10,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
                ),
              ),
              accountName: const Text("Moshe"),
              accountEmail: const Text("moshe@example.com"),
            ),
            ListTile(
              title: const Text('Home'),
              leading: const Icon(Icons.home),
              onTap: () {
                // Handle Home tap
              },
            ),
            Divider(color: const Color.fromARGB(255, 10, 10, 10), height: 1),
            ListTile(
              title: const Text('About'),
              leading: const Icon(Icons.info),
              onTap: () {
                // Handle About tap
              },
            ),
            Divider(color: const Color.fromARGB(255, 10, 10, 10), height: 1),
            ListTile(
              title: const Text('Contact'),
              leading: const Icon(Icons.contact_mail),
              onTap: () {
                // Handle Contact tap
              },
            ),
            Divider(color: const Color.fromARGB(255, 10, 10, 10), height: 1),
            ListTile(
              title: const Text('Settings'),
              leading: const Icon(Icons.settings),
              onTap: () {
                // Handle Settings tap
              },
            ),
            Divider(color: const Color.fromARGB(255, 10, 10, 10), height: 1),
            ListTile(
              title: const Text('Logout'),
              leading: const Icon(Icons.logout),
              onTap: () {
                // Handle Logout tap
              },
            ),
            Divider(color: Colors.black, height: 10),
            ListTile(
              title: const Text('App Version 1.0.0'),
              onTap: () {
                // Handle Version tap
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle Floating Action Button tap
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Floating Action Button Pressed!"),
              backgroundColor: Color.fromARGB(196, 68, 0, 255),
            ),
          );
        },
        child: const Icon(Icons.share_rounded),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Text(
                "Am working",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              // Image from network
              Image.network(
                "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
                width: 300,
                height: 250,
              ),
              //input field
              TextField(
                decoration: InputDecoration(
                  labelText: "Enter your name",
                  border: OutlineInputBorder(),
                  prefixIcon: const Icon(Icons.person),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "This is a sample This is a sample This is a sample THis is a sample THis is a sample THis is a sample This is a sample This is a sample This is a sample This is a sample",
                  textAlign: TextAlign.center,
                ),
              ),
              // add elevated button
              ElevatedButton(
                onPressed: () {
                  // Do something when button is pressed
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Button Pressed!"),
                      backgroundColor: Color.fromARGB(196, 68, 0, 255),
                    ),
                  );
                },
                child: const Text("Test Button"),
              ),
            ],
          ),
        ),
      ),
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                // Handle Home button press
              },
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                // Handle Home button press
              },
            ),
            IconButton(
              icon: const Icon(Icons.contacts),
              onPressed: () {
                // Handle Contacts button press
              },
            ),
          ],
        ),
      ],
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 66, 100, 31),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.home, color: Colors.white),
              onPressed: () {
                // Handle Home button press
              },
            ),
            IconButton(
              icon: const Icon(Icons.settings, color: Colors.white),
              onPressed: () {
                // Handle Settings button press
              },
            ),
            IconButton(
              icon: const Icon(Icons.contact_mail, color: Colors.white),
              onPressed: () {
                // Handle Contact button press
              },
            ),
          ],
        ),
      ),
    );
  }
}
