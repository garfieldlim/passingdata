import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: Colors.green[800],
          )),
      home: PassDataDemo(),
    );
  }
}

class PassDataDemo extends StatefulWidget {
  const PassDataDemo({Key? key}) : super(key: key);
  @override
  State<PassDataDemo> createState() => _PassDataDemoState();
}
class _PassDataDemoState extends State<PassDataDemo> {
  final myController = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
              'Who are you?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 36,
                color: Colors.green[800],
              )
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            width:300,
            height:50,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(12),
            ),
            child: TextField(
            controller: myController,
            decoration: InputDecoration(border: InputBorder.none,
              hintText: 'Forda email yung ferson',
            ),
          ),),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[800]),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(title: myController.text),
                ),
              );
            },
            child: const Text(
              "Say my name. Say my name.",
              style: TextStyle(fontSize: 24),
            ),
          ),
        ],
      ),],)
    );
  }
}
class DetailScreen extends StatefulWidget {
  // In the constructor, require a Todo.
  const DetailScreen({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}
class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'Your name is',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.black,)
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              '${widget.title}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 36,
                color: Colors.green[800],)
            ),
            SizedBox(
              height: 25,
            ),
            Text(
                "Baby ${widget.title}, you're my sun and moon.",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,)
            ),
            Text(
                "${widget.title}, you're everything in between.",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,)
            ),
          ],
        ),],)
      ),
    );
  }
}