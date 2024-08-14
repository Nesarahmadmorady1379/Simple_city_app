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
            padding: const EdgeInsets.fromLTRB(8.0,100.0,8.0,0.0),
            child: Column(

              children: [
                Container(
                  height: 200,
                  width: 200,
                  child:Image.asset('${widget.cityData.url}',fit: BoxFit.cover,),
                ),
                SizedBox(height: 10,),

                Text('The name of city is: ${widget.cityData.name}',style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,
                letterSpacing:3,fontSize: 25),),
                SizedBox(height: 10),
                Text('Capital: ${widget.cityData.capital}',style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,
                    letterSpacing:3,fontSize: 25)),
                SizedBox(height: 10),
                Text('Number of Districts: ${widget.cityData.numberOfDistricts}',style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,
                    letterSpacing:3,fontSize: 25)),
                SizedBox(height: 10),
                Text('Population: ${widget.cityData.population}',style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,
                    letterSpacing:3,fontSize: 25)),
                SizedBox(height: 10),
                Text('Area: ${widget.cityData.area}',style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,
                    letterSpacing:3,fontSize: 25)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}