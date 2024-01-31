import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        // foregroundColor: Colors.green,
        title: Text('오늘의 웹툰😊❤️',style: TextStyle(color:Colors.green,fontSize: 23, fontWeight: FontWeight.w800),),
      ),
    );
  }
}
