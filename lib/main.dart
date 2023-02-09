import 'package:flutter/material.dart';
import 'package:ui_guide/store.dart';

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
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Flutter Ui Demo'),
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
  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => BottomNavScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Stack(
              alignment: AlignmentDirectional.bottomStart,
              children: [
                Container(
                  width: double.infinity,
                  height: 150,
                  color: Colors.green,
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'News',
                      style: TextStyle(fontSize: 28, color: Colors.white),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 12,
                  left: 12,
                  child: Container(
                    width: 150,
                    height: 80,
                    color: Colors.white,
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        CircleAvatar(
                          // backgroundImage: ExactAssetImage('asset/man.png'),
                          child: Image.asset("images/man.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Location'),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  //top: 50,
                  bottom: 12,
                  left: 335,
                  child: Container(
                    width: 150,
                    height: 80,
                    color: Colors.white,
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        CircleAvatar(
                          child: Image.asset('images/man.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('People'),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  //top: 50,
                  bottom: 12,
                  left: 174,
                  child: Container(
                    width: 150,
                    height: 80,
                    color: Colors.white,
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        CircleAvatar(
                          child: Image.asset('images/man.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Emergency'),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Center(
              heightFactor: 2,
              child: Stack(
                alignment: Alignment.topCenter,
                clipBehavior: Clip.none,
                children: [
                  Card(
                    elevation: 50,
                    shadowColor: Colors.black,
                    color: Colors.green.shade50,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(32, 100, 32, 32),
                      child: Text(
                        'Press button',
                        style: TextStyle(fontSize: 32),
                      ),
                    ),
                  ),
                  Positioned(
                      child: Container(
                    child: const Icon(
                      Icons.gpp_good,
                      color: Colors.green,
                      size: 48,
                    ),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border:
                            Border.all(color: Colors.green.shade50, width: 4),
                        shape: BoxShape.circle),
                  ))
                ],
              ),
            )
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (() => _navigateToNextScreen(context)),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
