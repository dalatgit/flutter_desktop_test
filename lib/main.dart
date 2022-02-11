// import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:dart_tolk/dart_tolk.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Desktop Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    
    // increment the counter value
    setState(() {
      _counter++;
    });

    // use the Tolk library to announce the counter value using the screen reader
    final t = Tolk.fromPath('tolk.dll')..load();

    t.trySapi = true;
    print('Screen reader: ${t.currentScreenReader}.');
    print('Screen reader ${t.hasBraille ? "has" : "does not have"} braille.');
    print('Screen reader ${t.hasSpeech ? "has" : "does not have"} speech.');
    final messageForScreenReader = 'The counter value is now $_counter';
    t.output(messageForScreenReader);
    
    t.unload();    
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a search term',
              ),
            ),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      
      floatingActionButton: FloatingActionButton(
         
        onPressed: _incrementCounter,
        tooltip: 'Increment counter',
        child: const Icon(Icons.add),
        hoverColor: Colors.orange,
      ), 
        
    );
  }
}
