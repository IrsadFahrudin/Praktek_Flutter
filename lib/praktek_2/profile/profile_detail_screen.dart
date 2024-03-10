import 'package:flutter/material.dart';

import '../components/icon.dart';

class ProfileDetailScreen extends StatelessWidget {
  const ProfileDetailScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Detail'),
      ),
      body: Center(
        child: Column(children: [
          const Text('Ini adalah detail Profile'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      padding: const EdgeInsets.all(5),
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.lightBlue[50],
                          border:
                              Border.all(width: 2, color: Colors.blueAccent)),
                      child: const Center(
                        child: Text(
                          'Strawberry Birthday Cake',
                          style: TextStyle(
                              fontSize: 12.5, fontWeight: FontWeight.bold),
                        ),
                      )),
                  Container(
                    margin: const EdgeInsets.all(5.0),
                    padding: const EdgeInsets.all(5.0),
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.lightBlue[50],
                        border: Border.all(width: 2, color: Colors.blueAccent)),
                    child: const Center(
                      child: Text(
                        'Strawberry Cake is a meringue-based dessert named after the Russian ballerine Anna Pavlova.\nPavlova featues a crisp crust and soft, light inside, topped with fruit and whipped cream.',
                        style: TextStyle(fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.all(5),
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.lightBlue[50],
                          border:
                              Border.all(width: 2, color: Colors.blueAccent)),
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Star(),
                          Star(),
                          Star(),
                          Star(),
                          Star(),
                          const SizedBox(width: 5),
                          const Text(
                            '174 Reviews',
                            style: TextStyle(fontSize: 10.5),
                          ),
                        ],
                      ))),
                  Container(
                      margin: const EdgeInsets.all(5.0),
                      padding: const EdgeInsets.all(5),
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.lightBlue[50],
                          border:
                              Border.all(width: 2, color: Colors.blueAccent)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(2),
                                child: Icon(
                                  Icons.book_outlined,
                                  color: Colors.black,
                                  size: 13.0,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(2),
                                child: Text(
                                  'PREP:',
                                  style: TextStyle(
                                      fontSize: 10.5,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(2),
                                child: Text(
                                  '25 minutes',
                                  style: TextStyle(fontSize: 10.5),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(2),
                                child: Icon(
                                  Icons.timer_outlined,
                                  color: Colors.black,
                                  size: 13.0,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(2),
                                child: Text(
                                  'COOK:',
                                  style: TextStyle(
                                      fontSize: 10.5,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(2),
                                child: Text(
                                  '1 hr',
                                  style: TextStyle(fontSize: 10.5),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(2),
                                child: Icon(
                                  Icons.restaurant,
                                  color: Colors.black,
                                  size: 13.0,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(2),
                                child: Text(
                                  'FEEDS:',
                                  style: TextStyle(
                                      fontSize: 10.5,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(2),
                                child: Text(
                                  '4 - 5',
                                  style: TextStyle(fontSize: 10.5),
                                ),
                              ),
                            ],
                          )
                        ],
                      )),
                ],
              ),
              Image.network(
                  'https://static.vecteezy.com/system/resources/previews/029/100/750/original/cake-element-illustration-ai-generated-free-png.png',
                  width: 200,
                  height: 200)
            ],
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Kembali'))
        ]),
      ),
    );
  }
}
