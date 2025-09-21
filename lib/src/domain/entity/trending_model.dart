/// A model representing a trending item, used to show trending movies and TV shows.
///
/// Contains the title, description, image URL, and unique identifier of the trending item.
class TrendingModel {
  final String title;
  final String description;
  final String imageUrl;
  final int id;

  TrendingModel({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.id,
  });

  @override
  String toString() {
    return 'TrendingModel(title: $title, description: $description, imageUrl: $imageUrl, id: $id)';
  }
}
