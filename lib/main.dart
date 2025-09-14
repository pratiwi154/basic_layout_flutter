 import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

 class MyApp extends StatelessWidget {
  const MyApp({super.key});

 // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung Rinjani',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                Text(
                  'Banyuwangi, indonesia',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
         
          /*3*/
          Icon(
          Icons.star,
            color:  Colors.red,
          ),
          const Text('4.1'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

  Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn(Colors.blue, Icons.call, 'CALL'),
    _buildButtonColumn(Colors.blue, Icons.near_me, 'ROUTE'),
    _buildButtonColumn(Colors.blue, Icons.share, 'SHARE'),
  ],
);

// buat widget texsection
Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: const Text(
   'Gunung Rinjani adalah gunung berapi aktif dan tertinggi kedua di Indonesia, terletak di Lombok, NTB, dengan ketinggian 3.726 mdpl, dan menjadi bagian dari Jaringan Geopark Global UNESCO. Gunung ini terkenal dengan Danau Segara Anak di dalam kalderanya,serta menawarkan panorama alam yang indah, jalur pendakian menantang, dan kekayaan hayati dalam kawasan Taman Nasional Gunung Rinjani '
  ),
);
   


    return MaterialApp(
      title: 'Flutter layout: Leni Ayu Pratiwi 362458302125',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        // body: const Center(
        //child: Text('Hello world'),
      //),
        //body: Column (
        body: ListView (
          children:[
            // tambahkan gambar ke body
            Image.asset(
              'asset/rinjani.jpeg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
           titleSection,
           buttonSection,
           textSection,
          ],
            
        ),
      ),
    );
  }
 }



//membuat method column _buildbuttoncolumn
    Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}






  
