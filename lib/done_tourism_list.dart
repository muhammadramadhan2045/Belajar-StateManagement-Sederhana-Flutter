import 'package:flutter/material.dart';
import 'package:tes1/model/tourism_place.dart';

class DoneTourismList extends StatelessWidget {
  final List<TourismPlace> doneTourismPlaceList;
  const DoneTourismList({Key? key, required this.doneTourismPlaceList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata Telah Dikunjungi'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final TourismPlace place = doneTourismPlaceList[index];
          return Card(
            color: Colors.white60,
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
                    )),
                const Icon(Icons.done_outline),
              ],
            ),
          );
        },
        itemCount: doneTourismPlaceList.length,
      ),
    );
  }
}


              //