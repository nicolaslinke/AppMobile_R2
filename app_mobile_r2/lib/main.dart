import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        color: Colors.green,
                        height: 200,
                      ),
                      Container(
                        color: Colors.red,
                        height: 200,
                      ),
                      Container(
                        color: Colors.yellow,
                        height: 200,
                      ),
                      Container(
                        color: Colors.white,
                        height: 200,
                      ),
                      Container(
                        color: Colors.black,
                        height: 200,
                      ),
                      Container(
                        color: Colors.lightGreen,
                        height: 200,
                      ),
                      Container(
                        color: Colors.purple,
                        height: 200,
                      ),
                      Container(
                        color: Colors.greenAccent,
                        height: 200,
                      ),
                      Container(
                        color: Colors.deepOrange,
                        height: 200,
                      ),
                      Container(
                        color: Colors.pink,
                        height: 200,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      drawer: Drawer(),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
