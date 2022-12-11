import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
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
                  Text(
                    'Selamat Malam',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  Row(
                    children: [
                      Icon(Icons.notifications_active_outlined),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(Icons.settings),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(Icons.history)
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  AlbumCard(
                    image: AssetImage('1.jpg'),
                    label: 'Hot Hits Indonesia',
                  ),
                  SizedBox(width: 16),
                  AlbumCard(
                    image: AssetImage('2.jpg'),
                    label: 'Musik Populer 2021',
                  )
                ],
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  AlbumCard(
                    image: AssetImage('3.jpg'),
                    label: 'Lagi Viral',
                  ),
                  SizedBox(width: 16),
                  AlbumCard(
                    image: AssetImage('4.jpg'),
                    label: 'Puncak Klasemen',
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ]));
  }
}

class AlbumCard extends StatelessWidget {
  final AssetImage image;
  final String label;
  const AlbumCard({
    Key? key,
    required this.image,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
          color: Colors.white10, borderRadius: BorderRadius.circular(4)),
      clipBehavior: Clip.antiAlias,
      child: Row(children: [
        Image(
          image: image,
          height: 58,
          width: 58,
          fit: BoxFit.cover,
        ),
        SizedBox(width: 8),
        Text(label),
      ]),
    );
  }
}
