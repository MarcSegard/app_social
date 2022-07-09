import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          post1,
        ],
      ),
    );
  }
}

Widget post1 = Container(
  margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
  padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.2),
        spreadRadius: 1,
        blurRadius: 5,
        offset: const Offset(0, 3),
      ),
    ],
  ),
  child: Column(
    children: [
      Row(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(10, 0, 15, 0),
            height: 50,
            width: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.network(
                  'https://digischool-public.s3-eu-west-1.amazonaws.com/marketing-%C3%A9tudiant/Spacex/Logo_Spacex_entreprise_elon_musk.jpg'),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'SpaceX',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('Florida'),
            ],
          ),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      Image.network('https://img.generation-nt.com/01B0012001663785.jpg'),
      Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.comment,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      Container(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: const Text(
            "Deux astronautes américains se sont envolés samedi depuis le centre spatial Kennedy, en Floride, à bord d'une fusée de l'entreprise privée SpaceX, fondée par Elon Musk."),
      ),
    ],
  ),
);
