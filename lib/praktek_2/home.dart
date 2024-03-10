import 'package:flutter/material.dart';

import 'package:test_flutter_1/praktek_2/profile/profile_screen.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfileScreen()));
                },
                child: const Text('Profile')),
            Image.network(
                'https://www.pngitem.com/pimgs/m/233-2336321_chivis-de-anime-png-nao-tomori-chibi-png.png',
                width: 200),
            const Icon(
              Icons.check_circle_outline_rounded,
              color: Colors.blue,
              size: 50,
            ),
            RichText(
                text: const TextSpan(
              text: 'Aplikasi', // default text style
              children: <TextSpan>[
                TextSpan(
                    text: ' belajar ',
                    style: TextStyle(fontStyle: FontStyle.italic)),
                TextSpan(
                    text: 'berhitung',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            )),
            const Text(
              'Total:',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.blueGrey,
                  letterSpacing: 2),
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
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
