import 'package:flutter/material.dart';
import 'package:xbox_clone/datahelper/oyunlar.dart';

class OyunlarSekmesi extends StatefulWidget {
  const OyunlarSekmesi({super.key});

  @override
  State<OyunlarSekmesi> createState() => _OyunlarSekmesiState();
}

class _OyunlarSekmesiState extends State<OyunlarSekmesi> {
  Future<List<Oyunlar>> oyunResimler() async {
    var oyunResimleri = <Oyunlar>[];
    var o1 = Oyunlar(resim: 'deathstranding.jpeg');
    var o2 = Oyunlar(resim: 'uncharted.jpg');
    var o3 = Oyunlar(resim: 'pubg.png');
    var o4 = Oyunlar(resim: 'residentevil.jpg');

    oyunResimleri.add(o1);
    oyunResimleri.add(o2);
    oyunResimleri.add(o3);
    oyunResimleri.add(o4);

    return oyunResimleri;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      child: Expanded(
        child: FutureBuilder(
          future: oyunResimler(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var oyunResimleri = snapshot.data;
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: oyunResimleri!.length,
                itemBuilder: (context, index) {
                  var oyun = oyunResimleri[index];
                  return Card(
                    margin: const EdgeInsets.only(
                      left: 13,
                      top: 5,
                    ),
                    child: ClipRRect(
                      clipBehavior: Clip.values.last,
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        'resimler/${oyun.resim}',
                      ),
                    ),
                  );
                },
              );
            } else {
              return const Center();
            }
          },
        ),
      ),
    );
  }
}
