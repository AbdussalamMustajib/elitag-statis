import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double panjang = MediaQuery.of(context).size.width;
    double tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                kolomHead("NIM", panjang, tinggi),
                kolomHead("Nama Mahasiswa", panjang, tinggi),
                kolomHead("Dosen Wali", panjang, tinggi),
                kolomHead("Fakultas", panjang, tinggi),
                kolomHead("Prodi", panjang, tinggi),
                kolomHead("Jenis Kelamin", panjang, tinggi),
                kolomHead("Agama", panjang, tinggi),
                kolomHead("Tmp & Tgl Lahir", panjang, tinggi)
              ],
            ),
            Container(
              width: panjang * 0.01,
            ),
            Column(
              children: [
                kolomIsi("1462000192", panjang, tinggi),
                kolomIsi("Abdussalam Mustajib", panjang, tinggi),
                kolomIsi("0720128202 - Agung Kridoyono, S.ST., M.T.", panjang,
                    tinggi),
                kolomIsi("Fakultas Teknik", panjang, tinggi),
                kolomIsi("Teknik Informatika", panjang, tinggi),
                kolomIsi("Laki-Laki", panjang, tinggi),
                kolomIsi("Islam", panjang, tinggi),
                kolomIsi("Kab. Lumajang, 18 Des 2001", panjang, tinggi)
              ],
            ),
            Container(
              width: panjang * 0.01,
            ),
            Column(
              children: [
                Container(
                  height: panjang * 0.07,
                ),
                Image.asset(
                  'assets/images/aku.JPG',
                  width: panjang * 0.3,
                ),
                Container(
                  width: panjang * 0.3,
                  height: tinggi * 0.5,
                  child: Text(
                    "Saya Adalah seorang mahasiswa teknik informatika di Universitas 17 Agustus 1945 angkatan 2020 atau biasa disebut sebagai angkatan corona. Saya atau bisa dibilang kami sebagai angkatan 2020 dikatakan sebagai angkatan corona karena kami masuk bertepatan dengan terjadinya pandemi corona virus disease 2019.",
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget kolomHead(head, panjang, tinggi) {
    return Container(
      padding: EdgeInsets.all(5),
      width: panjang * 0.3,
      height: tinggi * 0.1,
      decoration: BoxDecoration(
        color: Colors.grey[400],
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(head),
        ],
      ),
    );
  }

  Widget kolomIsi(Isi, panjang, tinggi) {
    return Container(
      padding: EdgeInsets.all(5),
      width: panjang * 0.3,
      height: tinggi * 0.1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(Isi),
        ],
      ),
    );
  }
}
