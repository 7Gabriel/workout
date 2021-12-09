import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workout/widgets/app_drawaer.dart';

class WorkoutScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    var value = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Treinos'),
      ),
      drawer: AppDrawer(),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg1.jpg'),
                fit: BoxFit.cover
              )
            ),
          ),
          Card(
            child: Row(
              children: [
                SizedBox(
                  child: Image(
                    image: NetworkImage(''),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}