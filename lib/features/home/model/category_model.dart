class CategoryModel {
  final String title;
  final String image;

  CategoryModel({
    required this.title,
    required this.image,
  });
}

final List<CategoryModel> categories = [
  CategoryModel(
    title: '''Qur'an and Tafseer''',
    image: 'images/quran_hadit.png',
  ),
  CategoryModel(
    title: '''Hadith and Sunnah''',
    image: 'images/hadit.jpg',
  ),
  CategoryModel(
    title: '''Nabi-rasul, sahaba''',
    image: 'images/navi_rasul.png',
  ),
  CategoryModel(
    title: '''Salat/namaj''',
    image: 'images/salat.png',
  ),
  CategoryModel(
    title: '''Roja''',
    image: 'images/roja.jpg',
  ),
  CategoryModel(
    title: '''Zakat''',
    image: 'images/jakat.jpg',
  ),
];
