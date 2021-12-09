import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workout/screens/workout_screen.dart';

class AppDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: Container(
        color: Color.fromRGBO(29, 36, 41, 0.8),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.home, color: Theme.of(context).accentColor,),
              title: Text('Home'),
              onTap: () => Navigator.of(context).pushNamed('/'),
            ),
            ListTile(
              leading: Icon(Icons.fitness_center, color: Theme.of(context).accentColor,),
              title: Text('Treinos'),
              onTap: () => Navigator.of(context).pushNamed('/workout'),
            )
          ],
        ),
      ),
    );
  }

}