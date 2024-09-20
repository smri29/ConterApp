import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState(){
    return _HomepageState();
  }
}

class _HomepageState extends State<Homepage> {

  int counter=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        title: const Text('CounterApp'),
        backgroundColor:Colors.redAccent,
      ),
      body: Center(
        child: Text('Counter $counter'),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: (){
              counter--;
              print(counter);
              setState(() {
              });
            },
            child: const Icon(Icons.remove,color: Colors.black,),
          ),
          const SizedBox(width: 16,),
          FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: (){
              counter++;
              print(counter);
              setState(() {
              });
            },
            child: const Icon(Icons.add,color: Colors.black,),
          ),
        ],
      ),
    );
  }
}


/*class HomePage extends StatelessWidget {
  HomePage({super.key});

  int counter =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text('Counter $counter'),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey,
          onPressed: (){
            counter++;
            print(counter);
          },
          child: Icon(Icons.add,color: Colors.green,),
          ),
    );
  }
}*/