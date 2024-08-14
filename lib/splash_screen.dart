
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen>with SingleTickerProviderStateMixin {

  @override @override
  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 2),(){
      Navigator.pushReplacementNamed(context, '/home');
    });
  }
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: SystemUiOverlay.values);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.yellow,Colors.green,Colors.red,Colors.blue],
          begin: Alignment.topCenter,
            end: Alignment.bottomCenter,

          )),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0.0,0.0,0.0,50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star,color: Colors.blue,size: 100,),
            Text('Cities app',style:TextStyle(fontSize: 25,color: Colors.white,fontStyle:FontStyle.italic,
            fontWeight: FontWeight.bold,letterSpacing: 2,) ,),
                Text('v 0.0.1',style:TextStyle(fontSize: 25,color: Colors.white,fontStyle:FontStyle.italic,
                  fontWeight: FontWeight.bold,letterSpacing: 2,) )
              ],
            ),
          ),
        ),
      ) ,

    );
  }
}
