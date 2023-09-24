import 'package:flutter/material.dart';
import 'package:xbox_clone/app/bottomnavbar.dart';
import 'package:xbox_clone/app/kategorisekmesi.dart';
import 'package:xbox_clone/app/oyunlarsekmesi.dart';
import 'package:xbox_clone/datahelper/renkler.dart';

class Arayuz extends StatefulWidget {
  const Arayuz({super.key});

  @override
  State<Arayuz> createState() => _ArayuzState();
}

class _ArayuzState extends State<Arayuz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Renkler.arkaPlanRenk,
      body: const Column(
        children: [
          OyunlarSekmesi(),
          SizedBox(
            height: 25,
          ),
          KategoriSekmesi(),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
