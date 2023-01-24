import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(shrinkWrap: true, children: [
        Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  width: 150,
                  height: 200,
                  child: const Image(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/sy.jpg')),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    bottom: 20,
                  ),
                  height: 200,
                  width: MediaQuery.of(context).size.width / 1.7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('N I M'),
                          SizedBox(height: 10,),
                          Text('Nama'),
                          SizedBox(height: 10,),
                          Text('Tempat, Tanggal Lahir'),
                          SizedBox(height: 10,),
                          Text('IPK'),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(' : '),
                          SizedBox(height: 10,),
                          Text(' : '),
                          SizedBox(height: 10,),
                          Text(' : '),
                          SizedBox(height: 10,),
                          Text(' : '),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('1462000168'),
                          SizedBox(height: 10,),
                          Text('Muhammad Maulana Alfaris'),
                          SizedBox(height: 10,),
                          Text('Mojokerto, 03 - 06 - 2001'),
                          SizedBox(height: 10,),
                          Text('3,44'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: const [
                  Text(
                    'Deskripsi',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Muhammad Maulana Alfaris, Mahasiswa S1 Fakultas Teknik, Prodi Teknik Informatika semester 5 dengan IPK 3.44. Mengikuti UKM PATAGA, hobi membaca dan hiking. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            ),
          ],
        )
      ]),
    );
  }
}
