import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        topBox,
        followSection,
        textSection,
        const SizedBox(
          height: 10,
        ),
        buttonSection,
      ],
    );
  }
}

Widget topBox = Container(
  padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
  width: double.infinity,
  decoration: BoxDecoration(
    color: Colors.teal,
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.blue.shade400,
        Colors.tealAccent.shade700,
      ],
    ),
  ),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      imagePicture,
      const SizedBox(height: 10),
      profilSection,
    ],
  ),
);

Widget imagePicture = Container(
  padding: const EdgeInsets.all(4),
  height: 150,
  width: 150,
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(75),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.4),
        spreadRadius: 1,
        blurRadius: 2,
        offset: const Offset(0, 1),
      ),
    ],
  ),
  child: ClipRRect(
    borderRadius: BorderRadius.circular(200),
    child: Image.network(
        'https://relayeur.files.wordpress.com/2015/05/d7cb2e4a29656d1a73663685bca6732d.jpeg?w=620'),
  ),
);

Widget profilSection = Column(
  children: [
    const Text(
      'Elon Musk',
      style: TextStyle(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    ),
    const SizedBox(
      height: 5,
    ),
    const Text(
      'UI/UX Designer / Front End Developper',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 17,
      ),
    ),
    const SizedBox(
      height: 5,
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(
          Icons.location_on,
          color: Colors.white,
        ),
        Text(
          'Los Angeles, USA',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
          ),
        ),
      ],
    ),
  ],
);

Widget followSection = Container(
  color: Colors.white,
  padding: const EdgeInsets.all(20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        color: Colors.white,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              'Posts',
              style: TextStyle(
                  color: Colors.blue.shade400,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              '2398',
              style: TextStyle(
                color: Colors.blue.shade700,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
      Container(
        color: Colors.white,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              'Followers',
              style: TextStyle(
                  color: Colors.blue.shade400,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              '21.2K',
              style: TextStyle(
                color: Colors.blue.shade700,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
      Container(
        color: Colors.white,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              'Follow',
              style: TextStyle(
                  color: Colors.blue.shade400,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              '1200',
              style: TextStyle(
                color: Colors.blue.shade700,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);

Widget textSection = Container(
  padding: const EdgeInsets.all(20),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        'A propos',
        style: TextStyle(
          color: Colors.blue,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
      const SizedBox(
        height: 5,
      ),
      Text(
        "Elon Musk, né le 28 juin 1971 à Pretoria, est un entrepreneur, chef d'entreprise et ingénieur sud-africain, naturalisé canadien en 1988 puis américain en 2002.",
        style: TextStyle(
          color: Colors.grey.shade600,
          fontSize: 15,
          height: 1.5,
        ),
      )
    ],
  ),
);

Widget buttonSection = ElevatedButton(
  style: ElevatedButton.styleFrom(
    padding: const EdgeInsets.all(0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
    ),
  ),
  onPressed: () {},
  child: Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      gradient: LinearGradient(
        colors: <Color>[
          Colors.blue.shade400,
          Colors.tealAccent.shade700,
        ],
      ),
    ),
    padding: const EdgeInsets.fromLTRB(100, 15, 100, 15),
    child: const Text(
      'Suivre',
      style: TextStyle(fontSize: 20),
    ),
  ),
);
