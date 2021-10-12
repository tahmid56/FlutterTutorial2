import 'package:flutter/material.dart';
import 'package:tutorial2/models/catalog.dart';
import 'package:tutorial2/widgets/drawer.dart';
import 'package:tutorial2/widgets/item_widgets.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name = "Tahmid";
    final dummyList = List.generate(10, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome $name"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
