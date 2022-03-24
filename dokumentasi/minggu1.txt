import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(title: 'Stay Halal Brother'),
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
  String _oddeven = "";
  String _text = "";
  String _text1 = "";
  String _text2 = "";
  int i = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter > 10) {
        _counter = 1;
      }

      //status genap atau ganjil
      _oddeven = "Status :";
      if (_counter % 2 != 0)
        _oddeven += "Ganjil";
      else
        _oddeven += "Genap";

      /* kelipatan ganjil*/
      _text = "Daftar bilangan ganjil :";
      for (i = 0; i <= _counter; i++) {
        if (i % 2 != 0) {
          _text += ' ${i}, ';
        }
      }

      /*Kelipatan 3 genap*/
      _text1 = "Kelipatan 3 genap :";
      for (i = 0; i <= _counter; i++) {
        if (i % 3 == 0) {
          if (i % 2 == 0) {
            _text1 += ' ${i}, ';
          }
        }
      }

      /*Bilangan prima*/
      _text2 = "Bilangan Prima :";
      int r = 0;
      for (i = 1; i <= _counter; i++) {
        for (int y = 1; y <= i; y++) {
          if (i % y == 0) {
            r++;
          }
        }
        if (r == 2) {
          _text2 += ' ${i}, ';
        }
        r = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Kamu telah klik tombol tambah sebanyak :',
            ),
            Text(
              '$_oddeven',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              '$_text',
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              '$_text1',
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              '$_text2',
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Tambah angka',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
