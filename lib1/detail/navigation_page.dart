import 'package:elitag/scr/home_page.dart';
import 'package:elitag/scr/nilai_page.dart';
import 'package:elitag/scr/profile_page.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              appLogo,
              const SizedBox(
                width: 20,
              ),
              const Text('Program Studi Teknik Informatika\nUNTAG Surabaya'),
            ],
          ),
          bottom: const TabBar(tabs: [
            Text('Beranda'),
            Text('Nilai'),
            Text('profile'),
          ]),
        ),
        body: const TabBarView(children: [
          Center(
            child: Home(),
          ),
          Center(
            child: Nilai(),
          ),
          Center(
            child: Profile(),
          ),
        ]),
      ),
    );
  }

  Image appLogo = const Image(
      image: ExactAssetImage("assets/images/UNTAG.png"),
      height: 50,
      width: 50,
      alignment: FractionalOffset.center);
}
