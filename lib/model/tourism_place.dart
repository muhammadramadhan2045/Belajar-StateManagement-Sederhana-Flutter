class TourismPlace {
  String nama;
  String lokasi;
  String ImageAsset;
  String Deskripsi;
  String harga_tiket;
  String jam_buka;
  String hari_buka;
  //String gambar;

  TourismPlace({
    required this.nama,
    required this.lokasi,
    required this.ImageAsset,
    required this.Deskripsi,
    required this.harga_tiket,
    required this.hari_buka,
    required this.jam_buka,
  });
}

var TourisplaceList = [
  TourismPlace(
    nama: 'Dalam Loka Museum',
    lokasi:
        'Seketeng, Kec. Sumbawa, Kabupaten Sumbawa, Nusa Tenggara Bar. 84313',
    ImageAsset: 'assets/images/DalamLoka5.jpg',
    Deskripsi:
        'Rumah Adat Dalam Loka adalah kediaman raja-raja yang berasal dari Kabupaten Sumbawa, Nusa Tenggara Barat. Rumah dalam Loka atau istana Sumbawa ini merupakan peninggalan sejarah dari kerajaan Sumbawa. Istana Dalam Loka dibangun pada tahun 1885 oleh Sultan Muhammad Jalalludin III (1983-1931).',
    hari_buka: 'Buka Setiap Minggu',
    jam_buka: '08.00-16.00',
    harga_tiket: 'Free',
  ),
  TourismPlace(
    nama: 'Pulau Kenawa',
    lokasi: 'Kabupaten Sumbawa Barat, Nusa Tenggara Bar. 84313',
    ImageAsset: 'assets/images/Kenawa.jpg',
    Deskripsi:
        'Pulau Kenawa memiliki luas sebesar 15 hektare dengan garis pantai membentang sejauh sekitar 1,73 kilometer terletak di Kabupaten Sumbawa Barat, Provinsi Nusa Tenggara Barat (NTB).Selama ini, Pulau Kenawa identik dengan wisata bukit dan padang savananya, namun ternyata pantainya tidak kalah menarik, tenang dan bersih.',
    hari_buka: 'Buka Setiap Hari',
    jam_buka: '24 jam',
    harga_tiket: 'Rp. 100.000',
  ),
  TourismPlace(
    nama: 'Pulau Moyo',
    lokasi: 'Utara Pulau Sumbawa , Kabupaten Sumbawa, Nusa Tenggara Bar. 84313',
    ImageAsset: 'assets/images/PulauMoyo.jpg',
    Deskripsi:
        'Moyo adalah sebuah pulau yang terdapat 2,5 km di sebelah utara Pulau Sumbawa. Pulau ini memiliki luas 350 km2, ketinggian maksimum 671 meter, dan garis pantai 88 km. Secara administratif, pulau ini termasuk wilayah Kabupaten Sumbawa, Nusa Tenggara Barat, Indonesia.',
    hari_buka: 'Buka Setiap hari',
    jam_buka: '24 Jam',
    harga_tiket: 'Rp. 1.000.000',
  ),
  TourismPlace(
    nama: 'Ai Beling',
    lokasi: 'Lenagguar, Kabupaten Sumbawa, Nusa Tenggara Bar. 84313',
    ImageAsset: 'assets/images/Ai Beling.jpg',
    Deskripsi:
        'Ai Beling Waterfall is located in within a lush tropical forest. No wonder, the nuance is quite relaxing. This also explains why most visitors come to the waterfall to find peace and get rid of stresses. Some people have a different reason, though. For instance, they want to take a bath in the clear and refreshing water. The waterfall features a terraced landscape and beautiful water discharge, after all. For the information, the water comes from Batu Lanteh Mountains.',
    hari_buka: 'Buka Setiap Minggu',
    jam_buka: '08.00-16.00',
    harga_tiket: 'Rp. 10.000',
  ),
  TourismPlace(
    nama: 'Samota',
    lokasi:
        'jalan samota, Labuan Sumbawa, Labuhan Badas, Kabupaten Sumbawa, Nusa Tenggara Bar. 84316',
    ImageAsset: 'assets/images/Samota.jpg',
    Deskripsi:
        'Samota adalah akronim untuk nama tiga kawasan wisata di Sumbawa yakni Teluk Saleh, Pulau Moyo, dan Gunung Tambora. Panorama di kawasan Samota sangat potensial mendatangkan wisatawan, baik itu nusantara maupun mancanegara.Ketiga lokasi itu merupakan favorit karena mencakup pegunungan hingga dunia bawah laut. Samota layaknya surga bagi para wisatawan.',
    hari_buka: 'Buka Setiap Hari',
    jam_buka: '24 Jam',
    harga_tiket: 'Free',
  ),
];
