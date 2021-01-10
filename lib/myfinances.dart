import 'package:flutter/material.dart';

class MyFinances extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Finances(),
    );
  }
}

class Finances extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: <Widget>[
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.red[600], Colors.purple[400]])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 10,
                // Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: new FloatingActionButton(
                        child: new Text('🏡'),
                        onPressed: null,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 10,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: new FloatingActionButton(
                        child: new Text('🍔'),
                        onPressed: null,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 10,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: new FloatingActionButton(
                        child: new Text('🚗'),
                        onPressed: null,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 10,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: new FloatingActionButton(
                        child: new Text('⛳️'),
                        onPressed: null,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 10,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: new FloatingActionButton(
                        child: new Text('🔨'),
                        onPressed: null,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 10,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: new FloatingActionButton(
                        child: new Text('👨‍👩‍👧‍👦'),
                        onPressed: null,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 10,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: new FloatingActionButton(
                        child: new Text('⛳️'),
                        onPressed: null,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 10,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: new FloatingActionButton(
                        child: new Text('⛳️'),
                        onPressed: null,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 10,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: new FloatingActionButton(
                        child: new Text('⛳️'),
                        onPressed: null,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

// class ButtonState extends StatefulWidget {
//   @override
//   _ButtonState createState() => _ButtonState();
// }

// class _ButtonState extends State<ButtonState> {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       body: new Center(
//         child: new Stack(
//           // mainAxisSize: MainAxisSize
//           //     .min, // this will take space as minimum as posible(to center)
//           children: <Widget>[
//             new RaisedButton(
//               child: new Text('Hello'),
//               onPressed: null,
//             ),
//             new RaisedButton(
//               child: new Text('Hi'),
//               onPressed: null,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
