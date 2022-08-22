// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
      debugShowCheckedModeBanner: false,
      title: "İnstagram Giris Sayfası",
      home: loginPage(),
    );
  }
}

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  TextEditingController eposta = TextEditingController();
  TextEditingController sifre = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Türkçe(Türkiye)"),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 100.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                      "https://www.instagram.com/static/images/web/logged_out_wordmark.png/7a252de00b20.png"),
                  const SizedBox(height: 15),
                  Card(
                    shadowColor: Colors.black,
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      controller: eposta,
                      textAlign: TextAlign.justify,
                      decoration: InputDecoration(
                          hintText:
                              "Telefon numarası,kullanıcı adı veya e-posta",
                          focusColor: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Card(
                    shadowColor: Colors.black,
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      controller: sifre,
                      obscureText: true,
                      textAlign: TextAlign.justify,
                      decoration: InputDecoration(
                        hintText: "Şifre",
                        focusColor: Colors.grey,
                        suffixIcon: Icon(
                          Icons.wifi_password_rounded,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue),
                      height: 40,
                      width: 600,
                      child: Padding(
                        padding: const EdgeInsets.all(7),
                        child: RaisedButton(
                          textColor: Colors.white,
                          onPressed: () {},
                          color: Colors.blue,
                          child: Text(
                            "Giriş Yap",
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text("Giriş detaylarını mı unuttun?"),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Giriş yapmak için yardım al.",
                            style: TextStyle(fontSize: 12),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("-----------------YA DA-----------------"),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          child: Image.network(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/900px-Facebook_Logo_%282019%29.png"),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text("Facebook ile giriş yap")),
                      ],
                    ),
                  ),
                  /* Text(
                      '_____________________________________________________________'),*/
                  /*Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Hesabın yok mu?", style: TextStyle(fontSize: 14)),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Kaydol.",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),*/
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
