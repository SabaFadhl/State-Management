import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/view_model/counter_vm.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => CounterVM(),
      child: Scaffold(
        floatingActionButton: Consumer<CounterVM>(
          builder: (ctx, c, child) => FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              c.addOne();
            },
          ),
        ),
        body: Center(
          child: Consumer<CounterVM>(
            builder: (ctx, c, child) => Text(c.counter.toString()) ,
          ),
        ),
      ),
    );
  }
}
