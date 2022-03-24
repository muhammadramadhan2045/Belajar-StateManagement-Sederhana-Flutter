import 'package:flutter/material.dart';
import 'package:tes1/model/tourism_place.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  final TourismPlace place;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset(
            place.ImageAsset,
            //'assets/images/DalamLoka5.jpg',
            //width: 200,
            //height: 200,
          ), //image dari asset
          Container(
              //container untuk title
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                place.nama,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Lobster',
                  fontWeight: FontWeight.bold,
                ),
              )),
          Container(
              //container untuk ikon
              margin: EdgeInsets.only(top: 16.0),
              child: Row(
                //mainAxisAlignment menjadi spaceEvently,spaceBetween, spaceArounddan AxisAligment
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.calendar_today),
                      Text(place.hari_buka),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.access_time),
                      Text(place.jam_buka),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.attach_money_sharp),
                      Text(place.harga_tiket),
                    ],
                  ),
                ],
              )),
          Container(
              //container isi deskripsi
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                place.Deskripsi,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Oxygen',
                ),
              )),
          Container(
            //container isi image dari internet
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
//awal dari penggunaan padding dengan gambar
                /*Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.network(
                      'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.asset('assets/images/DalamLoka4.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.asset('assets/images/DalamLoka4.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.asset('assets/images/DalamLoka3.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.asset('assets/images/DalamLoka2.jpg'),
                ),*/
//akhir dari penggunaan padding dengan gambar
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('assets/images/DalamLoka2.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('assets/images/DalamLoka3.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('assets/images/DalamLoka.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('assets/images/DalamLoka4.jpg'),
                ),
              ],
            ),
          ),
        ],
      ),
    )));
  }
}
