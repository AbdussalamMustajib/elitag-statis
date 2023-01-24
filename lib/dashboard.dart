import 'package:elitag/home.dart';
import 'package:elitag/nilai.dart';
import 'package:elitag/profil.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});
  @override
  Widget build(BuildContext context) {
    double panjang = MediaQuery.of(context).size.width;
    double tinggi = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Icon(Icons.home),
              Text("Nilai"),
              Icon(Icons.person_outline_sharp),
            ],
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "UNIVERSITAS 17 AGUSTUS 1945 Surabaya",
                    style: TextStyle(
                        color: Colors.white, fontSize: panjang * 0.035),
                  ),
                  Text(
                    "PROGRAM STUDI TEKNIK INFORMATIKA",
                    style: TextStyle(
                        color: Colors.white, fontSize: panjang * 0.035),
                  ),
                ],
              ),
              Image.asset(
                "assets/images/UNTAG.png",
                width: 50,
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Home(),
            Nilai(),
            Profil(),
          ],
        ),
      ),
    );
  }
}
