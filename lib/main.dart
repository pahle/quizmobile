import 'package:flutter/material.dart';
import 'pokemon_data.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokemon',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pokemon"),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite),
        ),
      ],
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: listPokemon.length,
          itemBuilder: (context, index) {
            final PokemonData data = listPokemon[index];
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen(listPokemon: data);
                }));
              },
              child: Card(
                child: Hero(
                  tag: data.name,
                  child: Material(
                    child: InkWell(
                      child: GridTile(
                        footer: Container(
                          color: Colors.white70,
                          child: ListTile(
                            title: Text(
                              data.name,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        child: Image.network(
                          data.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final PokemonData listPokemon;
  const DetailScreen({Key? key, required this.listPokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(listPokemon.name),
        actions: [
          FavoriteButton(listPokemon: listPokemon),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(children: [
            Hero(
              tag: listPokemon.name,
              child: Image.network(listPokemon.image),
            ),
          ]),
          DetailTourismPlace(listPokemon: listPokemon),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
              var url = Uri.parse(listPokemon.wikiUrl);
              if (await canLaunchUrl(url)) {
                await launchUrl(url);
              } else {
                throw 'Could not launch $url';
              }
            },
        child: const Icon(Icons.link),
      )
    );
  }
}

class DetailTourismPlace extends StatelessWidget {
  final PokemonData listPokemon;
  const DetailTourismPlace({Key? key, required this.listPokemon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(children: [
        Text(
          listPokemon.name,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        Text('Type', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: listPokemon.type.map((e) {
              return Column(
                children: [
                  Icon(listPokemon.typeIcon[listPokemon.type.indexOf(e)]),
                  const SizedBox(height: 8),
                  Text(e),
                ],
              );
            }).toList(),
          ),
        ),
        Text('Weakness', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: listPokemon.weakness.map((e) {
              return Column(
                children: [
                  Icon(listPokemon.weaknessIcon[listPokemon.weakness.indexOf(e)]),
                  const SizedBox(height: 8),
                  Text(e),
                ],
              );
            }).toList(),
          ),
        ),
        Text('Prev Evolution', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        
        SizedBox(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: listPokemon.prevEvolution.map((e) {
              var image = "";
              if (e == "Bulbasaur") {
                image =
                    "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/001.jpg";
              } else if (e == "Ivysaur") {
                image =
                    "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/002.jpg";
              } else if (e == "Venusaur") {
                image =
                    "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/003.jpg";
              } else if (e == "Charmander") {
                image = "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/004.jpg";
              } else if (e == "Charmeleon") {
                image = "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/005.jpg";
              } else if (e == "Charizard") {
                image = "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/006.jpg";
              }
              else if (e == "Squirtle") {
                image = "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/007.jpg";
              } else if (e == "Wartortle") {
                image = "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/008.jpg";
              } else if (e == "Blastoise") {
                image = "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/009.jpg";
              } else if (e == "Caterpie") {
                image = "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/010.jpg";
              } else if (e == "Metapod") {
                image = "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/011.jpg";
              } 
              else if (e == "Butterfree") {
                image = "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/012.jpg";
              } 
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                  margin: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ));
            }).toList(),
          ),
        ),
        Text('Next Evolution', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        SizedBox(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: listPokemon.nextEvolution.map((e) {
              var image = "";
              if (e == "Bulbasaur") {
                image =
                    "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/001.jpg";
              } else if (e == "Ivysaur") {
                image =
                    "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/002.jpg";
              } else if (e == "Venusaur") {
                image =
                    "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/003.jpg";
              } else if (e == "Charmander") {
                image = "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/004.jpg";
              } else if (e == "Charmeleon") {
                image = "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/005.jpg";
              } else if (e == "Charizard") {
                image = "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/006.jpg";
              }
              else if (e == "Squirtle") {
                image = "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/007.jpg";
              } else if (e == "Wartortle") {
                image = "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/008.jpg";
              } else if (e == "Blastoise") {
                image = "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/009.jpg";
              } else if (e == "Caterpie") {
                image = "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/010.jpg";
              } else if (e == "Metapod") {
                image = "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/011.jpg";
              } 
              else if (e == "Butterfree") {
                image = "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/012.jpg";
              } 
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                  margin: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      image,
                      fit: BoxFit.cover,
                      
                    ),
                  ),
                ),
              ));
            }).toList(),
          ),
        ),
      ]),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  final PokemonData listPokemon;
  const FavoriteButton({Key? key, required this.listPokemon})
      : super(key: key);

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          widget.listPokemon.isFavorite = !widget.listPokemon.isFavorite;
        });
        if (widget.listPokemon.isFavorite) {
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text("Added to Favorite",style: TextStyle(fontSize: 16), textAlign: TextAlign.center,),
              backgroundColor: Colors.green,));
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Removed from Favorite",style: TextStyle(fontSize: 16), textAlign: TextAlign.center,),
              backgroundColor: Colors.red,));
        }
      },
      icon: Icon(
        widget.listPokemon.isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
    );
  }
}

_launchUrl() async {
  const url = 'https://pokemon.fandom.com/wiki/Bulbasaur';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}