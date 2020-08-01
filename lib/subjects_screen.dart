import 'package:flutter/material.dart';
import './dummy_data.dart';
import './SubjectItem.dart';

class SubjectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Q-Bank', )),
      ),
      body: GridView(
        padding: EdgeInsets.all(20),
        children: DUMMY_CATEGORIES
            .map((catData) => SubjectItem(catData.title, catData.color))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 290,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}

/* SliverGridDelegateWithMaxCrossAxisExtent handles the layout of the grid */
