import 'package:counter_example/auth/ui/login_page.dart';
import 'package:counter_example/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
        home: LoginPage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  // ? Don't Write a lot of Bussines Logic on Your UI
  // ? BLoC : Bussiness Logic Component
  TextEditingController number = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              number.clear();
              context.read<CounterBloc>().add(ResetTheCounter());
            },
            icon: Icon(Icons.exposure_zero),
          ),
        ],
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: TextField(
          controller: number,
          onChanged: (value) {
            context.read<CounterBloc>().add(ChangeFromTextField(word: value));
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text('You have pushed the button this many times:'),
            BlocConsumer<CounterBloc, CounterState>(
              // ? This is a Listner for call functions Depending On state
              listener: (context, state) {
                if (state is BadUserBehavior) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(state.message),
                      backgroundColor: Colors.red,
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                }
              },

              // ? This is a Builder for re-draw the UI in Each State
              builder: (context, state) {
                // if (state is TheCounterHasBeenIncrease) {
                //   return Text(
                //     state.counter.toString(),
                //     style: TextStyle(fontSize: 32),
                //   );
                // } else if (state is TheCounterHasBeenDecrease) {
                //   return Text(
                //     state.counter.toString(),
                //     style: TextStyle(fontSize: 32),
                //   );
                // } else
                
                 if (state is TheCounterHasBeenEditied) {
                  return Text(
                    state.counter.toString(),
                    style: TextStyle(fontSize: 32),
                  );
                } else {
                  return Text("0", style: TextStyle(fontSize: 32));
                }
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        spacing: 20,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(Increment());
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(Decrement());
            },
            tooltip: 'decreament',
            child: const Icon(Icons.minimize),
          ),
        ],
      ),
    );
  }
}
