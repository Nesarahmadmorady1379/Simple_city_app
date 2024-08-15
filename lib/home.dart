import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';

import 'about.dart';
import 'cities.dart';
import 'information.dart';

class Mainpage extends StatefulWidget {
  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  List<City> cityInfo = [
    City('Ghoor', 'Firozkoh', 12, 23000000, '12000km', 'image/Imag1.jpg'),
    City('Herat', 'Hirat', 18, 230000000, '120000km', 'image/Image2.jpg'),
    City('Kabul', 'Kabul', 12, 23000000, '12000km', 'image/Image3.jpg'),
    City('Balkh', 'Mazar sharif', 12, 23000000, '12000km', 'image/Image4.jpg'),
    City('Kandhar', 'Kandhar', 12, 23000000, '12000km', 'image/Image5.jpg'),
    City('Nangarhar', 'Jalalabad', 12, 23000000, '12000km', 'image/Image6.jpg'),
    City('Badakhshan', 'Fayzabad', 12, 23000000, '12000km', 'image/Image7.jpg'),
    City('Bamyan', 'Bamyan', 12, 23000000, '12000km', 'image/Image8.jpg'),
    City('Ghazni', 'Ghazni', 12, 23000000, '12000km', 'image/Image9.jpg'),
    City('Parwan', 'Charikar', 12, 23000000, '12000km', 'image/Image10.jpg'),
    City('Helmand', 'Grishk', 12, 23000000, '12000km', 'image/Image11.jpg'),
  ];
Random r=Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text(
            'Cities',
            style: TextStyle(
              fontSize: 25,
              color: Colors.red,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
          centerTitle: true,
          actions: [
            PopupMenuButton<String>(
              onSelected: (String value) {
                switch (value) {
                  case 'Share':
                    Share.share('Check out this amazing app: [https://github.com/Nesarahmadmorady1379?tab=repositories]');
                    break;
                  case 'About':
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => about()));
                    break;

                  case 'Exit':
                    SystemNavigator.pop();
                    break;
                }
              },
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem<String>(
                    value: 'Share',
                    child: Text('Share'),
                  ),
                  PopupMenuItem<String>(
                    value: 'About',
                    child: Text('About'),
                  ),

                  PopupMenuItem<String>(
                    value: 'Exit',
                    child: Text('Exit'),
                  ),
                ];
              },
            ),
          ],
        ),
        body: Center(
          child: ListView.builder(
            itemCount: cityInfo.length,
            itemBuilder: (context, index) {
              return Card(
                color: Color.fromARGB(r.nextInt(244), r.nextInt(244), r.nextInt(244), r.nextInt(244)),
                child: ListTile(
                  title: Text('${cityInfo[index].name}'),

                      leading: CircleAvatar(
                        backgroundImage: AssetImage(cityInfo[index].url ?? 'assets/default_image.jpg',


                        ),

                      ),


                  trailing: const Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => information(cityData: cityInfo[index]),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
