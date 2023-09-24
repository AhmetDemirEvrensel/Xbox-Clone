import 'package:flutter/material.dart';
import 'package:xbox_clone/datahelper/renkler.dart';
import 'package:xbox_clone/datahelper/sabitler.dart';
import 'package:xbox_clone/app/arayuz.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Renkler.arkaPlanRenk,
      appBar: AppBar(
        backgroundColor: Renkler.arkaPlanRenk,
        leading: Padding(
          padding: const EdgeInsets.only(left: 23),
          child: Row(
            children: [
              Image.asset(
                Sabitler.url,
                width: 30,
                height: 30,
                color: Colors.white,
              ),
            ],
          ),
        ),
        title: Text(
          'GAME PASS',
          style: TextStyle(
              color: Renkler.iconRenk,
              fontFamily: 'Roboto',
              fontSize: 20,
              fontWeight: FontWeight.w500),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.notifications_none_rounded,
                color: Renkler.iconRenk,
                size: 30,
              )),
        ],
      ),
      body: Arayuz(),
    );
  }
}
