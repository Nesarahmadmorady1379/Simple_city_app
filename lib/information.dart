import 'package:assignement_11_app/cities.dart';
import 'package:flutter/material.dart';

class information extends StatefulWidget {
  final City cityData;

  information({required this.cityData});

  @override
  State<information> createState() => _informationState();
}

class _informationState extends State<information> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Information'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.green,Colors.red],
          begin: Alignment.topRight),

        ),
        child: Center(

          child: Padding(
            padding: const EdgeInsets.fromLTRB(8.0,0.0,8.0,0.0),
            child: Column(

              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  child:Image.asset('${widget.cityData.url}',fit: BoxFit.cover,),
                ),
                SizedBox(height: 10,),
                Text(' ${widget.cityData.name}',style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,
                letterSpacing:3,fontSize: 25,),),
                SizedBox(height: 10),
                Text('This is a provence of Afghanistan it hase alot of beautiful places its capital is '
                    ' ${widget.cityData.capital} and also it hase the greatest peaopl they are hospitable'
                    'and have alot of fun every they come to a place and do their activity the most pupular'
                    'activity are Bozkashy ,socar, cricat and it hase ${widget.cityData.numberOfDistricts}'
                    'district all districts are bautiful amazing and alwase green places for voation '
                    'and hase ${widget.cityData.population} population it is not alot peaople can live free'
                    'and its area is ${widget.cityData.area} anough place to have one milion people',style: TextStyle(fontStyle: FontStyle.italic,
                    letterSpacing:3,fontSize: 20,color: Colors.white)),

            ]

          ),
        ),
      ),
    ));
  }
}