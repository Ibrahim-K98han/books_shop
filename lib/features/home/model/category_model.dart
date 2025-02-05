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
    title: '''All''',
    image: 'images/quran_hadit.png',
  ),
  CategoryModel(
    title: '''Qur'an and\n Tafseer''',
    image: 'images/quran_hadit.png',
  ),
  CategoryModel(
    title: '''Hadith and\n Sunnah''',
    image: 'images/hadit.jpg',
  ),
  CategoryModel(
    title: '''Nabi-rasul,\n sahaba''',
    image: 'images/navi_rasul.png',
  ),
  CategoryModel(
    title: '''Salat / namaj''',
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
