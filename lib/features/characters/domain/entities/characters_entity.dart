class CharacterEntity {
  final String id;
  final String name;
  final String status;
  final String species;
  final String gender;
  final String imageUrl;
  final String originName;
  final String locationName;
  final bool isFavorite;

  const CharacterEntity({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.gender,
    required this.imageUrl,
    required this.originName,
    required this.locationName,
    this.isFavorite = false,
  });
}
