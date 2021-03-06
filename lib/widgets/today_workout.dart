import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodayWorkout extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final _query = MediaQuery.of(context);
   return Card(
     elevation: 5,
     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
     child: Row(
       children: [
         SizedBox(
           width: _query.size.width * 0.6,
           child: Column(
             children: [
               Row(
                 children: [
                   Flexible(
                     child:
                       Padding(
                         padding: const EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 20),
                         child: Text('Treino do dia',
                             style: Theme.of(context).textTheme.headline1),
                       ),
                   ),
                 ],
               ),
               Row(
                 children: [
                   Flexible(
                     child:
                        Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 20),
                      child: Text('Treino',
                     style: Theme.of(context).textTheme.subtitle2),
                   ),
                   ),
                 ],
               )
             ],
           ),
         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: ClipRRect(
             borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
             topRight: Radius.circular(10),
             bottomLeft: Radius.circular(20),
             bottomRight: Radius.circular(20)),
             child: const Image(
                 image: NetworkImage('https://www.sponser.com/media/catalog/product/h/e/header_pre_workout_booster.png'
                 ),width: 130, height: 200, fit: BoxFit.cover,),
           ),
         )
       ],
     ),
   );
  }
  
}