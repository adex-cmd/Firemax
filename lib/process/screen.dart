import 'package:firemax/process/stop.dart';
import 'package:firemax/setup/process.dart';
import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  static List<Process> stop = [
    Process(name: 'More evo Guns', picture: 'assets/image/R.png'),
    Process(name: 'More evo Guns', picture: 'assets/image/R.png'),
    Process(name: 'More evo Guns', picture: 'assets/image/R.png'),
    Process(name: 'More evo Guns', picture: 'assets/image/R.png'),
    Process(name: 'More evo Guns', picture: 'assets/image/R.png'),
    Process(name: 'More evo Guns', picture: 'assets/image/R.png'),
    Process(name: 'More evo Guns', picture: 'assets/image/R.png'),
    Process(name: 'More evo Guns', picture: 'assets/image/R.png'),
    Process(name: 'More evo Guns', picture: 'assets/image/R.png'),
    Process(name: 'More evo Guns', picture: 'assets/image/R.png'),
    // Add more Process objects here...
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: const Drawer(
          elevation: 0,
          backgroundColor: Colors.blue,
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 200,
                    ),
                    Text("Home"),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text("Home"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text("Home"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text("Home"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text("Home"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        appBar: AppBar(
          elevation: 0,
          title: const Center(child: Text("Free Fire Update")),
        ),
        body: Scaffold(
          body: ListView.builder(
            itemCount: stop.length,
            itemBuilder: (context, index) => SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 500,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.blue, Colors.white],
                      ),
                    ),
                    child: Display(
                      inppues: stop[index].name, assetName: stop[index].picture, // Pass the Process object to Display
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
