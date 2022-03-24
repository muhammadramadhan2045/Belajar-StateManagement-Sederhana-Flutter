import 'package:flutter/material.dart';
import 'package:tes1/detail_screen.dart';
import 'package:tes1/model/tourism_place.dart';
import 'package:tes1/tourism_list.dart';
import 'package:tes1/done_tourism_list.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<TourismPlace> doneTourismPlaceList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata Sumbawa'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.done_outline),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return DoneTourismList(
                      doneTourismPlaceList: doneTourismPlaceList);
                }),
              );
            },
          )
        ],
      ),
      body: TourismList(doneTourismPlaceList: doneTourismPlaceList),
    );
  }
}
/*  Widget listItem(TourismPlace place) {
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Image.asset(place.ImageAsset),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    place.nama,
                    style: const TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    place.lokasi,
                    style: TextStyle(fontSize: 12.0),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
 */
