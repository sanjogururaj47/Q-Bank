import 'package:flutter/material.dart';

class SubjectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Topics'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (ctx, index) {
          return Container(
            child: ListTile(
              leading: CircleAvatar(
                child: Text(index.toString()),
              ),
              title: Text('Topic heading'),
              subtitle: Text('Topic one line desc'),
              trailing: Icon(Icons.star),
            ),
          );
        },
      ),
    );
  }
}
