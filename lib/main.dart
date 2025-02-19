import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter チュートリアルアプリ',
      theme: ThemeData(
        fontFamily: 'RobotoMono',
        primarySwatch: Colors.teal,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
        ),
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
            color: Colors.teal,
          ),
        ),
      ),
      darkTheme: ThemeData.dark(),
      themeMode:ThemeMode.system,
      home: const MyHomePage(title: 'カウンターアプリ'),
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

  void _decrementCounter() {
    setState(() {
      if(_counter > 0){
        _counter--;
      }
    });
  }
  void _resetCounter() {
  setState(() {
    _counter = 0; // カウントをリセット
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('ボタンを押した回数:'),
            Text(
              '$_counter',
              style: const TextStyle(
                fontSize:48,
                fontWeight:FontWeight.bold,
                color:Colors.blueAccent,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: _incrementCounter,
                tooltip: 'Increment',
                backgroundColor: Colors.blue,
                child: const Icon(Icons.add),
              ),
              const SizedBox(width: 16),
              FloatingActionButton(
                onPressed: _decrementCounter,
                tooltip: 'Decrement',
                backgroundColor: Colors.red,
                child: const Icon(Icons.remove),
              ),
            ], 
          ),
          const SizedBox(height: 16),
          Row(
           mainAxisAlignment: MainAxisAlignment.end,
           children:[
          FloatingActionButton(
            onPressed: _resetCounter,
            tooltip: 'Reset',
            backgroundColor: Colors.orange,
            child: const Icon(Icons.refresh),
          ),
           ]
          ),
        ],
      ),
    );
  }
}
