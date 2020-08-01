import 'package:flutter/material.dart';
import 'package:q_bank/subjects_topics_screen.dart';

class SubjectItem extends StatelessWidget {
  final String title;
  final Color color;

  SubjectItem(this.title, this.color);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return SubjectScreen();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius:  BorderRadius.circular(20),
          child: Container(
        padding: const EdgeInsets.all(20),
        child: Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            color.withOpacity(0.6), color
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}


/* InkWell is sort of like the Gesturedetector with animations,
material page route is a class, which takes 4 arguments
1. bulder: specify which widget has to be built using 
the material page route
2. fullscreendialog: is a boolean, animations and stuff like that */