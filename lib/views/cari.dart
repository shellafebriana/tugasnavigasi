import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CariPage extends StatefulWidget {
  const CariPage({super.key});

  @override
  State<CariPage> createState() => _CariPageState();
}

class _CariPageState extends State<CariPage> {
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
                children: [
                  Text(
                    'Cari',
                    style: Theme.of(context).textTheme.headline5,
                  )
                ],
              )),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.black38),
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(
                  Icons.search,
                  color: Color(0xff7B8794),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Browse Semua',
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(children: [
              GenreCard(
                label: 'Kilas Balik \n2022',
                color: Colors.purpleAccent.shade400,
              ),
              SizedBox(width: 16),
              GenreCard(
                label: 'Podcast',
                color: Colors.orange.shade800,
              )
            ]),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(children: [
              GenreCard(
                label: 'Dibuat Untuk \nKamu',
                color: Colors.blue.shade900,
              ),
              SizedBox(width: 16),
              GenreCard(
                label: 'Rilis Baru',
                color: Colors.pinkAccent.shade400,
              )
            ]),
          )
        ],
      ))
    ]));
  }
}

class GenreCard extends StatelessWidget {
  final String label;
  final Color color;
  const GenreCard({
    Key? key,
    required this.label,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 120,
      padding: EdgeInsets.all(15),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(4)),
      child: Row(children: [
        Text(
          label,
          style: Theme.of(context).textTheme.headline6,
        )
      ]),
    );
  }
}
