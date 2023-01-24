// import 'package:elitag/scr/nilai_page.dart';
// import 'package:elitag/scr/profile_page.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20),
        children: [
          GridView.count(
            primary: false,
            shrinkWrap: true,
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: [
              //Sistem Keamanan Siber
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.grey),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      child: const Image(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://static.republika.co.id/uploads/images/inpicture_slide/keamanan-siber-_150805052843-213.jpg'),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          const Text(
                            '14620223 - SISTEM KEAMANAN SIBER - D - 20221',
                            style: TextStyle(fontSize: 15),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Kamis, 09:30 - 12:00',
                                style: TextStyle(fontSize: 10),
                              ),
                              Text(
                                'Ruang I201',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 10),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

              //Aplikasi Multi Media
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.grey),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      child: const Image(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/multimedia.jpg'),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          const Text(
                            '14620253 - SISTEM APLIKASI MULTIMEDIA - D - 20221',
                            style: TextStyle(fontSize: 15),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('Jumat, 13:00 - Opsional',
                                  style: TextStyle(fontSize: 10)),
                              Text(
                                'Ruang Q302',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 10),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

              //Pengolahan Citra Digital*
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.grey),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      child: const Image(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/pcd.jpg'),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          const Text(
                            '114620244 - PENGOLAHAN CITRA DIGITAL* - D - 20221',
                            style: TextStyle(fontSize: 15),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Senin, 12:00 - 13:40',
                                style: TextStyle(fontSize: 10),
                              ),
                              Text(
                                'Ruang Q803',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 10),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Senin, 12:00 - 13:40',
                                style: TextStyle(fontSize: 10),
                              ),
                              Text(
                                'Ruang Q803',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 10),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Rabu, 13:40 - 15:20',
                                style: TextStyle(fontSize: 10),
                              ),
                              Text(
                                'Ruang Q803',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 10),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

              //text mining
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.grey),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      child: const Image(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/mining.jpg'),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          const Text(
                            '14620373 - PENGOLAHAN BAHASA ALAMI DAN TEXT MINING - D - 20221',
                            style: TextStyle(fontSize: 15),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Selasa, 09:30 - 12:00',
                                style: TextStyle(fontSize: 10),
                              ),
                              Text(
                                'Ruang E302',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 10),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              //Pengembangan Game
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.grey),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      child: const Image(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/game.jpg'),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          const Text(
                            '14620263 - PENGEMBANGAN GAME - D - 20221',
                            style: TextStyle(fontSize: 15),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Kamis, 12:00 - 14:30',
                                style: TextStyle(fontSize: 10),
                              ),
                              Text(
                                'Ruang Q702',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 10),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              //aplikasi bergerak
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.grey),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      child: const Image(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/aplikasi.jpg'),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          const Text(
                            '14620233 - PENGEMBANGAN APLIKASI BERGERAK* - D - 20221',
                            style: TextStyle(fontSize: 15),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Selasa, 12:00 - 14:30',
                                style: TextStyle(fontSize: 10),
                              ),
                              Text(
                                'Ruang Q305',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 10),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
