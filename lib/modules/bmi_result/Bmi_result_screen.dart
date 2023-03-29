import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {

  final int age;
  final double result;
  final bool male;
  BMIResultScreen({
    required this.age,
    required this.result,
    required this.male,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bmi Result"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("The Gender Is : ${male?"Male" : "Female"}",style: TextStyle(fontSize: 3030.0,fontWeight: FontWeight.w500),),
            Text("The Result Is : ${result.round()}",style: TextStyle(fontSize: 3030.0,fontWeight: FontWeight.w500),),
            Text("The Age Is : $age",style: TextStyle(fontSize: 3030.0,fontWeight: FontWeight.w500),),
          ],
        ),
      ),
    );
  }
}
