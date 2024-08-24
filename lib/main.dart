import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(const HuaTuoAI());
}

class HuaTuoAI extends StatefulWidget {
  const HuaTuoAI({super.key});

  @override
  State<HuaTuoAI> createState() => _HuaTuoAIState();
}

class _HuaTuoAIState extends State<HuaTuoAI> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "华佗AI",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.pink.withOpacity(1),
        ),
        useMaterial3: true,
      ),
      home: const HuaTuoAIMain(title: "华佗AI"),
    );
  }
}

class HuaTuoAIMain extends StatefulWidget {
  const HuaTuoAIMain({super.key, required this.title});

  final String title;

  @override
  State<HuaTuoAIMain> createState() => _HuaTuoAIMainState();
}

class _HuaTuoAIMainState extends State<HuaTuoAIMain> {
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
