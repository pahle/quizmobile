import 'package:flutter/material.dart';

class PokemonData {
  String name;
  String image;
  List<String> type;
  List<IconData> typeIcon;
  List<IconData> weaknessIcon;
  List<String> weakness;
  List<String> prevEvolution;
  List<String> nextEvolution;
  String wikiUrl;
  bool isFavorite;

  PokemonData({
    required this.name,
    required this.image,
    required this.type,
    this.typeIcon = const [Icons.circle],
    this.weaknessIcon = const [Icons.circle],
    required this.weakness,
    required this.prevEvolution,
    required this.nextEvolution,
    required this.wikiUrl,
    this.isFavorite = false,
  });
}

var listPokemon = [
  PokemonData(
    name: "Bulbasaur",
    image:
        "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/001.jpg",
    type: ["Grass", "Poison"],
    typeIcon: [Icons.eco, Icons.emoji_nature],
    weakness: ["Fire", "Ice", "Flying", "Psychic"],
    weaknessIcon: [
      Icons.whatshot,
      Icons.ac_unit,
      Icons.tornado,
      Icons.psychology
    ],
    prevEvolution: [],
    nextEvolution: ["Ivysaur", "Venusaur"],
    wikiUrl: "https://pokemon.fandom.com/wiki/Bulbasaur",
    isFavorite: true,
  ),
  PokemonData(
    name: "Ivysaur",
    image:
        "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/002.jpg",
    type: ["Grass", "Poison"],
    typeIcon: [Icons.eco, Icons.emoji_nature],
    weakness: ["Fire", "Ice", "Flying", "Psychic"],
    weaknessIcon: [
      Icons.whatshot,
      Icons.ac_unit,
      Icons.tornado,
      Icons.psychology
    ],
    prevEvolution: ["Bulbasaur"],
    nextEvolution: ["Venusaur"],
    wikiUrl: "https://pokemon.fandom.com/wiki/Ivysaur",
  ),
  PokemonData(
    name: "Venusaur",
    image:
        "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/003.jpg",
    type: ["Grass", "Poison"],
    typeIcon: [Icons.eco, Icons.emoji_nature],
    weakness: ["Fire", "Ice", "Flying", "Psychic"],
    weaknessIcon: [
      Icons.whatshot,
      Icons.ac_unit,
      Icons.tornado,
      Icons.psychology
    ],
    prevEvolution: ["Bulbasaur", "Ivysaur"],
    nextEvolution: [],
    wikiUrl: "https://pokemon.fandom.com/wiki/Venusaur",
  ),
  PokemonData(
    name: "Charmander",
    image:
        "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/004.jpg",
    type: ["Fire"],
    typeIcon: [Icons.whatshot],
    weakness: ["Water", "Ground", "Rock"],
    weaknessIcon: [Icons.water, Icons.terrain, Icons.landslide],
    prevEvolution: [],
    nextEvolution: ["Charmeleon", "Charizard"],
    wikiUrl: "https://pokemon.fandom.com/wiki/Charmander",
  ),
  PokemonData(
    name: "Charmeleon",
    image:
        "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/005.jpg",
    type: ["Fire"],
    typeIcon: [Icons.whatshot],
    weakness: ["Water", "Ground", "Rock"],
    weaknessIcon: [Icons.water, Icons.terrain, Icons.landslide],
    prevEvolution: ["Charmander"],
    nextEvolution: ["Charizard"],
    wikiUrl: "https://pokemon.fandom.com/wiki/Charmeleon",
  ),
  PokemonData(
    name: "Charizard",
    image:
        "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/006.jpg",
    type: ["Fire", "Flying"],
    typeIcon: [Icons.whatshot, Icons.tornado],
    weakness: ["Water", "Electric", "Rock"],
    weaknessIcon: [Icons.water, Icons.flash_on, Icons.landslide],
    prevEvolution: ["Charmander", "Charmeleon"],
    nextEvolution: [],
    wikiUrl: "https://pokemon.fandom.com/wiki/Charizard",
  ),
  PokemonData(
    name: "Squirtle",
    image:
        "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/007.jpg",
    type: ["Water"],
    typeIcon: [Icons.water],
    weakness: ["Electric", "Grass"],
    weaknessIcon: [Icons.flash_on, Icons.eco],
    prevEvolution: [],
    nextEvolution: ["Wartortle", "Blastoise"],
    wikiUrl: "https://pokemon.fandom.com/wiki/Squirtle",
  ),
  PokemonData(
    name: "Wartortle",
    image:
        "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/008.jpg",
    type: ["Water"],
    typeIcon: [Icons.water],
    weakness: ["Electric", "Grass"],
    weaknessIcon: [Icons.flash_on, Icons.eco],
    prevEvolution: ["Squirtle"],
    nextEvolution: ["Blastoise"],
    wikiUrl: "https://pokemon.fandom.com/wiki/Wartortle",
  ),
  PokemonData(
    name: "Blastoise",
    image:
        "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/009.jpg",
    type: ["Water"],
    typeIcon: [Icons.water],
    weakness: ["Electric", "Grass"],
    weaknessIcon: [Icons.flash_on, Icons.eco],
    prevEvolution: ["Squirtle", "Wartortle"],
    nextEvolution: [],
    wikiUrl: "https://pokemon.fandom.com/wiki/Blastoise",
  ),
  PokemonData(
    name: "Caterpie",
    image:
        "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/010.jpg",
    type: ["Bug"],
    typeIcon: [Icons.bug_report],
    weakness: ["Fire", "Flying", "Rock"],
    weaknessIcon: [Icons.whatshot, Icons.tornado, Icons.landslide],
    prevEvolution: [],
    nextEvolution: ["Metapod", "Butterfree"],
    wikiUrl: "https://pokemon.fandom.com/wiki/Caterpie",
  ),
  PokemonData(
    name: "Metapod",
    image:
        "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/011.jpg",
    type: ["Bug"],
    typeIcon: [Icons.bug_report],
    weakness: ["Fire", "Flying", "Rock"],
    weaknessIcon: [Icons.whatshot, Icons.tornado, Icons.landslide],
    prevEvolution: ["Caterpie"],
    nextEvolution: ["Butterfree"],
    wikiUrl: "https://pokemon.fandom.com/wiki/Metapod",
  ),
  PokemonData(
    name: "Butterfree",
    image:
        "https://raw.githubusercontent.com/abubabalim/praktikum_mobile/master/kuis/img/012.jpg",
    type: ["Bug", "Flying"],
    typeIcon: [Icons.bug_report, Icons.tornado],
    weakness: ["Fire", "Electric", "Ice", "Flying", "Rock"],
    weaknessIcon: [
      Icons.whatshot,
      Icons.flash_on,
      Icons.ac_unit,
      Icons.tornado,
      Icons.landslide
    ],
    prevEvolution: ["Caterpie", "Metapod"],
    nextEvolution: [],
    wikiUrl: "https://pokemon.fandom.com/wiki/Butterfree",
  ),
];
