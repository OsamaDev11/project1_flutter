import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1_flutter/modules/counter/cuibt/cuibt.dart';
import 'package:project1_flutter/modules/counter/cuibt/state.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit,CounterStates>(
        listener: (context , state) {
           if(state is CounterMinusState)
            print("MinusState");
          else
            print("PlusState");
        },
        builder: (context , state) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Counter"),
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                     CounterCubit.get(context).minus();
                      },
                      child: Text(
                        "min",
                        style: TextStyle(fontSize: 24.0, color: Colors.black),
                      )),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      "${CounterCubit.get(context).counter}",
                      style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextButton
                      (
                      onPressed: () {
                        CounterCubit.get(context).plus();
                      },
                      child: Text(
                        "max",
                        style: TextStyle(fontSize: 24.0, color: Colors.black),
                      ))
                ],
              ),
            ),
          );}
        ),

      );
  }
}

