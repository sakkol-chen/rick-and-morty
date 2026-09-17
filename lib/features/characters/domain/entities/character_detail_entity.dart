class CharacterDetailEntity {
  final String id;
  final String name;
  final String status;
  final String species;
  final String type;
  final String gender;
  final String imageUrl;
  final String originName;
  final String originDimension;
  final String locationName;
  final String locationDimension;
  final List<EpisodeEntity> episodes;

  const CharacterDetailEntity({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.imageUrl,
    required this.originName,
    required this.originDimension,
    required this.locationName,
    required this.locationDimension,
    required this.episodes,
  });
}

class EpisodeEntity {
  final String id;
  final String name;
  final String airDate;
  final String episodeCode; // e.g., S01E01

  const EpisodeEntity({
    required this.id,
    required this.name,
    required this.airDate,
    required this.episodeCode,
  });
}
