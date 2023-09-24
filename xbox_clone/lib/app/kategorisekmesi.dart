import 'package:flutter/material.dart';
import 'package:xbox_clone/datahelper/kategori.dart';

class KategoriSekmesi extends StatefulWidget {
  const KategoriSekmesi({super.key});

  @override
  State<KategoriSekmesi> createState() => _KategoriSekmesiState();
}

class _KategoriSekmesiState extends State<KategoriSekmesi> {
  Future<List<Kategori>> kategori() async {
    var kategoriler = <Kategori>[];

    var k1 = Kategori(
        kategoriAd: 'BAĞIMSIZ',
        kategoriIcon: 'kategori.png',
        kategoriRenk: Colors.green[600]);
    var k2 = Kategori(
        kategoriAd: 'AİLE',
        kategoriIcon: 'aile.png',
        kategoriRenk: Colors.green[600]);
    var k3 = Kategori(
        kategoriAd: 'KLASİKLER',
        kategoriIcon: 'klasikler.png',
        kategoriRenk: Colors.teal[600]);
    var k4 = Kategori(
        kategoriAd: 'NİŞANCI',
        kategoriIcon: 'nisanci.png',
        kategoriRenk: Colors.teal[600]);
    var k5 = Kategori(
        kategoriAd: 'SPOR',
        kategoriIcon: 'spor.png',
        kategoriRenk: Colors.teal[500]);
    var k6 = Kategori(
        kategoriAd: 'MACERA',
        kategoriIcon: 'macera.png',
        kategoriRenk: Colors.teal[500]);
    var k7 = Kategori(
        kategoriAd: 'PLATFORM',
        kategoriIcon: 'platform.png',
        kategoriRenk: Colors.teal[400]);
    var k8 = Kategori(
        kategoriAd: 'DÖVÜŞ',
        kategoriIcon: 'mma.png',
        kategoriRenk: Colors.teal[400]);

    var k9 = Kategori(
        kategoriAd: 'BULMACA',
        kategoriIcon: 'bulmaca.png',
        kategoriRenk: Colors.teal[300]);

    var k10 = Kategori(
        kategoriAd: 'STRATEJİ',
        kategoriIcon: 'strategy.png',
        kategoriRenk: Colors.teal[300]);

    kategoriler.add(k1);
    kategoriler.add(k2);
    kategoriler.add(k3);
    kategoriler.add(k4);
    kategoriler.add(k5);
    kategoriler.add(k6);
    kategoriler.add(k7);
    kategoriler.add(k8);
    kategoriler.add(k9);
    kategoriler.add(k10);

    return kategoriler;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: FutureBuilder<List<Kategori>>(
        future: kategori(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var kategorListesi = snapshot.data;
            return GridView.builder(
              itemCount: kategorListesi!.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1 / 0.45,
              ),
              itemBuilder: (context, index) {
                var kategori = kategorListesi[index];
                return Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  margin: const EdgeInsets.only(left: 5, top: 10, right: 5),
                  color: kategori.kategoriRenk,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 40),
                        child: Text(
                          kategori.kategoriAd,
                          style: const TextStyle(
                              fontSize: 17,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Image.asset(
                          alignment: Alignment.centerRight,
                          'resimler/${kategori.kategoriIcon}',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          } else {
            return const Center();
          }
        },
      ),
    );
  }
}
