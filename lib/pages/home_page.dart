import 'package:flutter/material.dart';
import 'package:tutorial2/widgets/drawer.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name = "Tahmid";

    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome $name"),
      ),
      body: Center(
        child: Text('Hello $name'),
      ),
      drawer: MyDrawer(),
    );
  }
}
