import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double panjang = MediaQuery.of(context).size.width;
    double tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(panjang * 0.01),
                  child: daftarMatkul(
                      'assets/images/cyber.jpg',
                      '14620223 - SISTEM KEAMANAN CYBER - D - 20221',
                      'Kamis, 09:30 - 12:00',
                      'I201',
                      panjang,
                      tinggi),
                ),
                Container(
                  padding: EdgeInsets.all(panjang * 0.01),
                  child: daftarMatkul(
                      'assets/images/multimedia.jpg',
                      '14620253 - SISTEM APLIKASI MULTIMEDIA - C - 20221',
                      'Jumat, 12:00 - 14:30',
                      'Q305',
                      panjang,
                      tinggi),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(panjang * 0.01),
                  child: daftarMatkul(
                      'assets/images/pcd.jpg',
                      '14620256 - PENGOLAHAN CITRA DIGITAL - D - 20221',
                      'Senin, 12:00 - 13:40\nRabu, 12:00 - 13:40',
                      'Q802\nQ803',
                      panjang,
                      tinggi),
                ),
                Container(
                  padding: EdgeInsets.all(panjang * 0.01),
                  child: daftarMatkul(
                      'assets/images/mining.jpg',
                      '14620373 - PENGOLAHAN BAHASA ALAMI DAN TEXT MINING - D - 20221',
                      'Selasa, 09:30 - 12:00',
                      'E302',
                      panjang,
                      tinggi),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(panjang * 0.01),
                  child: daftarMatkul(
                      'assets/images/game.jpg',
                      '14620263 - PENGEMBANGAN GAME - D - 20221',
                      'Selasa, 12:00 - 14:30',
                      'Q702',
                      panjang,
                      tinggi),
                ),
                Container(
                  padding: EdgeInsets.all(panjang * 0.01),
                  child: daftarMatkul(
                      'assets/images/aplikasi.jpg',
                      '14620233 - PENGEMBANGAN APLIKASI BERGERAK - D - 20221',
                      'Kamis, 12:00 - 14:30',
                      'E302',
                      panjang,
                      tinggi),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget daftarMatkul(images, nama, jadwal, ruangan, panjang, tinggi) {
    return Container(
      padding: EdgeInsets.all(5),
      width: panjang * 0.48,
      height: tinggi * 0.4,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: tinggi * 0.23,
            width: panjang * 0.45,
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage(images),
            ),
          ),
          Text(
            nama,
            style: TextStyle(fontSize: 15),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                jadwal,
                style: TextStyle(fontSize: 10),
              ),
              Text(
                ruangan,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
