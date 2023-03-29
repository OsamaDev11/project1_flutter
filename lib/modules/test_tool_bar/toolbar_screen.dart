import 'package:flutter/material.dart';

class ToolBarScreen extends StatelessWidget {
  const ToolBarScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.amber,
      appBar: AppBar(

      ),
    );
  }
}
