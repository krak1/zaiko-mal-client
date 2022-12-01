import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'zaiko',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Zaiko'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 3,
          childAspectRatio: 0.7,
          padding: const EdgeInsets.all(2),
          children: [
                Cards(
                title: '1',
                id: '2',
                image: '3')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Cards extends StatefulWidget {
  const Cards({super.key, required this.title, required this.id, required this.image});
  final String title;
  final String id;
  final String image;

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 50,
      shadowColor: Colors.black,
      child: SizedBox(
        width:  MediaQuery.of(context).size.width,
        height:  MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Stack(
            children: [
              Container(
                alignment: Alignment.center,
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                      'GeeksforGeeks',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}