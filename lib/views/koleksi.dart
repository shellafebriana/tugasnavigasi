import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class KoleksiPage extends StatefulWidget {
  const KoleksiPage({super.key});

  @override
  State<KoleksiPage> createState() => _KoleksiPageState();
}

class _KoleksiPageState extends State<KoleksiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SafeArea(
            child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('5.jpg'), fit: BoxFit.fill),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Koleksi Kamu',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.search_outlined),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(Icons.playlist_add_outlined)
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    ListKoleksi(
                        image: AssetImage('1.jpg'),
                        title: 'Hot Hits Indonesia',
                        subtitle: '\n\nPlaylist by Spotify'),
                    SizedBox(
                      height: 16,
                    ),
                    ListKoleksi(
                        image: AssetImage('2.jpg'),
                        title: 'Musik Populer 2021',
                        subtitle: '\n\nPlaylist by Spotify'),
                    SizedBox(
                      height: 16,
                    ),
                    ListKoleksi(
                        image: AssetImage('3.jpg'),
                        title: 'Lagi Viral',
                        subtitle: '\n\nPlaylist by Spotify'),
                    SizedBox(
                      height: 16,
                    ),
                    ListKoleksi(
                        image: AssetImage('4.jpg'),
                        title: 'Puncak Klasemen',
                        subtitle: '\n\nPlaylist by Spotify'),
                  ],
                ))
          ],
        ))
      ],
    ));
  }
}

class ListKoleksi extends StatelessWidget {
  final AssetImage image;
  final String title;
  final String subtitle;
  const ListKoleksi({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        Image(image: image, width: 80, height: 80),
        SizedBox(
          width: 16,
        ),
        RichText(
            text: TextSpan(
                text: title,
                style: TextStyle(color: Colors.white),
                children: [
              TextSpan(
                text: subtitle,
                style: TextStyle(color: Colors.white54, fontSize: 10),
              ),
            ]))
      ]),
    );
  }
}
