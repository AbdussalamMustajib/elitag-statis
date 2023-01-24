import 'package:flutter/material.dart';

class Nilai extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double panjang = MediaQuery.of(context).size.width;
    double tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text(
              "Transkrip Nilai Mahasiswa",
              style: TextStyle(
                  fontSize: panjang * 0.05, fontWeight: FontWeight.bold),
            ),
            Container(
              height: panjang * 0.05,
            ),
            tampilNilai("14620173 - ADMINISTRASI JARINGAN", "4", "9.75", "B+",
                panjang, tinggi),
            tampilNilai("14620083 - ARSITEKTUR DAN ORGANISASI KOMPUTER", "2",
                "11.25", "A-", panjang, tinggi),
            tampilNilai(
                "000802 - BAHASA INDONESIA", "1", "8", "A", panjang, tinggi),
            tampilNilai(
                "14620352 - BAHASA INGGRIS", "4", "7.5", "A-", panjang, tinggi),
            tampilNilai("14620034 - DASAR-DASAR PEMROGRAMAN", "1", "15", "A-",
                panjang, tinggi),
            tampilNilai("16120532 - ENGLISH FOR SPECIFIC PURPOSES", "7", "6.5",
                "B+", panjang, tinggi),
            tampilNilai(
                "14620213 - ENTREPRENEUR", "5", "11.25", "A-", panjang, tinggi),
            tampilNilai("14620382 - ETIKA TEKNOLOGI INFORMASI", "1", "7.5",
                "A-", panjang, tinggi)
          ],
        ),
      ),
    );
  }

  Widget tampilNilai(matkul, semester, nK, nilai, panjang, tinggi) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(10),
      height: tinggi * 0.15,
      width: panjang,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: Colors.grey[150],
          border: Border.all(color: Colors.black)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            matkul,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text('Semester : $semester\nNK : $nK\nNilai : $nilai'),
        ],
      ),
    );
  }
}
