import 'package:bloc_rxdart/bloc_provider.dart';
import 'package:bloc_rxdart/counter_bloc.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: CounterBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              StreamBuilder(
                stream:
                    BlocProvider.of<CounterBloc>(context).counterValueStream,
                builder: (context, snapshot) => Text(
                  '${snapshot.data}',
                ),
              ),
            ],
          ),
        ),
        floatingActionButton:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
          Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: FloatingActionButton(
                onPressed: BlocProvider.of<CounterBloc>(context).increment,
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              )),
          FloatingActionButton(
            onPressed: BlocProvider.of<CounterBloc>(context).decrement,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ]));
  }

  @override
  void dispose() {
    super.dispose();
  }
}
