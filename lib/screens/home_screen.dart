import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workout/utils/utils.dart';
import 'package:workout/widgets/app_drawaer.dart';
import 'package:workout/widgets/today_workout.dart';

class HomeScreen extends StatelessWidget{

  List<FlatButton> _getButton(){
    List<FlatButton> _list = [];
    for(int i = 1; i < 8; i++){
      _list.add(FlatButton(onPressed: () => print(i) , child: Text(Utils.getWeekDayName(i).toString())));
    }
  return _list;
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     extendBodyBehindAppBar: true,
     drawer: AppDrawer(),
     appBar: AppBar(
       title: Text('Home'),
     ),
     body: Stack(
       children: [
         Container(
           decoration:
           BoxDecoration(
             image:
             DecorationImage(
               fit: BoxFit.cover,
               image:
               AssetImage('assets/images/bg3.jpg'),
             ),
           ),
         ),
           Padding(
             padding: const EdgeInsets.only(top: 80),
             child: Column(
               children: [
                 SingleChildScrollView(
                   scrollDirection: Axis.horizontal,
                   child: ButtonBar(
                     children: _getButton(),
                   ),
                 ),
                 TodayWorkout()
               ],
             ),
           ),
       ],
     ),
     );
  }
}