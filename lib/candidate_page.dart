import 'package:flutter/material.dart';
import 'package:projet_election/CandidateDetailsPage.dart';

class CandidatePage extends StatefulWidget {
  const CandidatePage({super.key});

  @override
  State<CandidatePage> createState() => _CandidatePageState();
}

class _CandidatePageState extends State<CandidatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Candidats'),
        ),
        body: Container(
          color: Colors.grey[300],
          child: ListView(
            children: [
              // Boutons de navigation
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Candidats sur la liste'),
                  ),

                ],
              ),
              // Liste des candidats
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CandidateDetailsPage(
                        name: 'TOBI Ayindé ',
                        imageUrl: 'https://www.shutterstock.com/fr/image-photo/head-shot-portrait-smiling-african-american-1806957904', // utiliser une URL d'image en ligne ici
                        description: "Lui il est prèt à tout faire pour le bien être et le développement de son pays et il s'engage à protéger les droits de l'home et de la femme",
                      ),
                    ),
                  );
                },
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://www.shutterstock.com/fr/image-photo/head-shot-portrait-smiling-african-american-1806957904'), // utiliser une URL d'image en ligne ici
                  ),
                  title: Text('TOBI Ayindé'),
                  subtitle: Text("Lui il est prèt à tout faire pour le bien être et le développement de son pays et il s'engage à protéger les droits de l'home et de la femme"),
                  trailing: IconButton(
                    icon: Icon(Icons.add_alert_sharp),
                    onPressed: () {},
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CandidateDetailsPage(
                        name: 'BOBO Tobi',
                        imageUrl: 'https://www.shutterstock.com/fr/image-photo/head-shot-portrait-smiling-african-american-1806957904', // utiliser une URL d'image en ligne ici
                        description: "Lui il est prèt à tout faire pour le bien être et le développement de son pays et il s'engage à protéger les droits de l'home et de la femme",
                      ),
                    ),
                  );
                },
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://www.shutterstock.com/fr/image-photo/waist-portrait-confident-africanamerican-politician-looking-1873857973'), // utiliser une URL d'image en ligne ici
                  ),
                  title: Text('BOBO Tobi'),
                  subtitle: Text("Lui il est prèt à tout faire pour le bien être et le développement de son pays et il s'engage à protéger les droits de l'home et de la femme"),
                  trailing: IconButton(
                    icon: Icon(Icons.add_alert_sharp),
                    onPressed: () {},
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CandidateDetailsPage(
                        name: 'BIO Issifou',
                        imageUrl: 'https://www.shutterstock.com/fr/image-photo/brussels-belgium-19th-sep-2019-congos-1508995181', // utiliser une URL d'image en ligne ici
                        description: "Lui il est prèt à tout faire pour le bien être et le développement de son pays et il s'engage à protéger les droits de l'home et de la femme",
                      ),
                    ),
                  );
                },
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage("https://www.shutterstock.com/fr/image-photo/brussels-belgium-19th-sep-2019-congos-1508995181"), // utiliser une URL d'image en ligne ici
                  ),
                  title: Text('BIO Issifou'),
                  subtitle: Text("Lui il est prèt à tout faire pour le bien être et le développement de son pays et il s'engage à protéger les droits de l'home et de la femme"),
                  trailing: IconButton(
                    icon: Icon(Icons.add_alert_sharp),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Accueil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favoris',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Paramètres',
            ),
          ],
        )
    );
  }
}
