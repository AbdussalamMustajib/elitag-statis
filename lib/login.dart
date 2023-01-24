import 'package:flutter/material.dart';
import 'package:elitag/dashboard.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool VisibleText = true;

  String Username = "1462000192";
  String Password = "20011218";

  TextEditingController _CUsername = TextEditingController();
  TextEditingController _CPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Selamat Datang di SIAKAD UNTAG")),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                    "Login"),
                Container(
                  height: 30,
                ),
                Image.asset(
                  'assets/images/UNTAG.png',
                  width: 150,
                  height: 150,
                ),
                Container(
                  height: 30,
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: TextField(
                      controller: _CUsername,
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Username',
                      ),
                    )),
                Container(
                  height: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: TextField(
                    controller: _CPassword,
                    obscureText: VisibleText,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              VisibleText = !VisibleText;
                            });
                          },
                          icon: VisibleText
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off)),
                    ),
                  ),
                ),
                Container(height: 20),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red)),
                    onPressed: () {
                      cekLogin(context);
                    },
                    child: Text(
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      "Login",
                    ),
                  ),
                ),
                Container(height: 20),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Username 1462000192 dan Password 20011218",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.blue[600]),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void cekLogin(BuildContext context) {
    if (_CUsername.text == Username && _CPassword.text == Password) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const Dashboard(),
        ),
      );
    } else if (_CUsername.text.isEmpty || _CPassword.text.isEmpty) {
      showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          titlePadding: const EdgeInsets.all(30),
          title: const Center(
              child: Text('NIM atau Password tidak boleh kosong!')),
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
