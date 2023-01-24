import 'package:elitag/detail/navigation_page.dart';
// import 'package:elitag/scr/home_page.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool visbilityPass = true;

  final String myNim = '1462000192';
  final String myPass = '20011218';

  TextEditingController nim = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(100),
          width: double.infinity,
          height: double.infinity,
          color: Colors.grey[350],
          child: Card(
            elevation: 50,
            shadowColor: Colors.black,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: 150,
                  height: 150,
                  child: Image.asset('assets/images/UNTAG.png'),
                ),
                Container(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      TextField(
                        controller: nim,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(width: 2),
                          ),
                          labelText: 'NIM',
                          hintText: 'Input NIM',
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: pass,
                        obscureText: visbilityPass,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(width: 2),
                          ),
                          labelText: 'Password',
                          hintText: 'Input Password',
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  visbilityPass = !visbilityPass;
                                });
                              },
                              icon: visbilityPass
                                  ? const Icon(Icons.visibility)
                                  : const Icon(Icons.visibility_off)),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            cekLogin(context);
                          },
                          child: const Text('login '))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void cekLogin(BuildContext context) {
    if (nim.text == myNim && pass.text == myPass) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const Nav(),
        ),
      );
    } else if (nim.text.isEmpty || pass.text.isEmpty) {
      showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          titlePadding: const EdgeInsets.all(30),
          title:
              const Center(child: Text('NIM dan Password tidak boleh kosong!')),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context, 'OK');
                },
                child: const Text("OK"))
          ],
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          titlePadding: const EdgeInsets.all(30),
          title: const Center(child: Text('NIM atau Password Salah!')),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context, 'OK');
                },
                child: const Text("OK"))
          ],
        ),
      );
    }
  }
}
