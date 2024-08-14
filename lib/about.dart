import 'package:flutter/material.dart';

class about extends StatelessWidget {
  const about({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
home: Scaffold(
  body: Container(
    width: double.infinity,
    decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.yellow,Colors.red],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft)),
    child: Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text('about developer :',style: TextStyle(fontSize: 22,fontStyle:FontStyle.italic,fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
            Text('developer name is nesarahamd morady studying at 8 semester in herat university in '
                'computer science faculty and in internship program in wassa organization that is '

                'a non prophit company that help the moste grle to learn something to bring mony on disk'

    ),
            SizedBox(height: 10,),
            Text('about app',style: TextStyle(fontSize: 22,fontStyle:FontStyle.italic,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text('this app developed ass assignment during internship in wassa organization'
                'this is about ten the most cities in afghanistan that i like the most and '
                'give information'
            )
          ],
        ),
      ),
    ),
  ),
),
    );

  }
}
