import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workout/widgets/app_drawaer.dart';
import 'package:workout/widgets/custom_clipper.dart';

class WorkoutScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    final mediaQuery = MediaQuery.of(context);

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
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                children:[
                  SizedBox(
                    width: mediaQuery.size.width * 0.4,
                    child: ClipPath(
                      clipper: CustomClipperScreen(),
                      child: Image(
                        image: NetworkImage('https://images.unsplash.com/photo-1581009137042-c552e485697a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8d29ya291dHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Corrida', style: Theme.of(context).textTheme.headline4,),
                        Text('Sábado', style: Theme.of(context).textTheme.subtitle2,),
                        SizedBox(
                            width: double.infinity,
                            child: Padding(
                               padding:  const EdgeInsets.all(8.0),
                                child:
                                OutlineButton(
                                  onPressed: () => print('click exercevicio'),
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(0, 223, 100, 1)
                                  ),
                                  child: Text('Exercicios'),
                                ),
                            ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

}