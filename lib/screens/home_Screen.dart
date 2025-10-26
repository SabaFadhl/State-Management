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
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
          Provider.of<CounterVM>(context, listen: false).addOne();
          },
        ),
      body: Center(
        child: Consumer<CounterVM>(
          builder: (ctx, c, child) => Text(c.counter.toString(),style: TextStyle(fontSize: 50),) ,
        ),
      ),
    );
  }
}
