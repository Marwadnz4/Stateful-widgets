import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int myNumber = 25;

  Color btnColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.amberAccent,
          foregroundColor: Colors.black,
          child: Row(
            children: const [
              Icon(
                Icons.check,
                color: Colors.blue,
              ),
              Text(
                'M',
              )
            ],
          ),
        ),
        body: Column(
          children: [
            const Image(image: AssetImage('images/girl.jpg')),
            Text(
              '$myNumber',
              style: const TextStyle(fontSize: 30),
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    if (btnColor == Colors.red) {
                      myNumber--;
                      btnColor = Colors.grey;
                    } else {
                      btnColor = Colors.red;
                      myNumber++;
                    }
                  });
                },
                icon: Icon(
                  Icons.favorite,
                  size: 30,
                  color: btnColor,
                ))
          ],
        ),
      ),
    );
  }
}


// FlatButton(
//               onPressed: () {},
//               color: Colors.amber,
//               colorBrightness: Brightness.light,
//               child: const Text('FlatButton'),
//             ),
//             RaisedButton(
//               onPressed: () {},
//               colorBrightness: Brightness.dark,
//               child: const Text('RaisedButton'),
//             ),
//             TextButton(onPressed: () {}, child: const Text('TextButton')),
//             TextButton.icon(
//               onPressed: () {},
//               icon: const Icon(Icons.circle_rounded),
//               label: const Text('TextButton.icon'),
//               style: const ButtonStyle(
//                 animationDuration: Duration(seconds: 4),
                
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () {},
//               child: const Text('ElevatedButton'),
//             ),
//             ElevatedButton.icon(
//               onPressed: null,
//               icon: const Icon(Icons.ac_unit),
//               label: const Text('ElevatedButton.icon'),
//               style: ElevatedButton.styleFrom(
//                   shadowColor: Colors.amber,
//                   primary: Colors.black,
//                   onPrimary: Colors.amber,
//                   onSurface: Colors.blue),
//             ),
//             OutlinedButton(
//               onPressed: () {},
//               style: OutlinedButton.styleFrom(
//                   primary: Colors.amber,
//                   side: const BorderSide(width: 6, color: Colors.amber)),
//               child: const Text('OutlinedButton'),
//             )