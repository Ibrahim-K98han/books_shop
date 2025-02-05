import 'package:flutter/material.dart';

class ProductModel {
  final String title;
  final String description;
  final String img;
  final String review;
  final String seller;
  final double price;
  final List<Color> colors;
  final String category;
  final double rate;
  int quantity;

  ProductModel({
    required this.title,
    required this.description,
    required this.img,
    required this.review,
    required this.seller,
    required this.price,
    required this.colors,
    required this.category,
    required this.rate,
    required this.quantity,
  });
}

final List<ProductModel> all = [
  ProductModel(
    title: 'আল কুরআনের কাব্যানুবাদ',
    description:
        '''কবিতায় কবিতায় সম্পূর্ণ ৩০ পারা কুরআনের বাংলা অনুবাদ। ভাষা ও সাহিত্যে এ এক বিস্ময়কর কীর্তি!
মজার ব্যাপার হলো, কবিতা বলে এর বর্ণনাধারা জটিল, কঠিন বা দুরূহ নয় মোটেও; এর পুরো অনুবাদ অত...''',
    img: 'images/quran_er_kabbanubadh.png',
    review: '(320 Review)',
    seller: ' মুহিব খান ',
    price: 150,
    colors: [
      Colors.black,
      Colors.blue,
      Colors.orange,
    ],
    category: '''Qur'an and\n Tafseer''',
    rate: 4.8,
    quantity: 1,
  ),
  ProductModel(
    title: 'ফয়জুল কালাম',
    description:
        '''ইলমে হাদিসের অজস্র গ্রন্থের মাঝে ফয়জুল কালাম একটি মকবুল সংযোজন। বইটিকে মুফতিয়ে আজম ফয়জুল্লাহ রহ.-এর বয়নসংকলনও বলা চলে। তিনি কোথাও আলোচক হিসেবে আমন্ত্রিত হলে কোনো নির্ধারিত বিষয়ের উপর এক...''',
    img: 'images/faraze_kalam.png',
    review: '(420 Review)',
    seller: 'মুফতীয়ে আযম আল্লামা ফয়যুল্লাহ (র.)',
    price: 150,
    colors: [
      Colors.black,
      Colors.blue,
      Colors.orange,
    ],
    category: '''Hadith and\n Sunnah''',
    rate: 4.5,
    quantity: 2,
  ),
];

final List<ProductModel> quran_and_tafsire = [
  ProductModel(
    title: 'আল কুরআনের কাব্যানুবাদ',
    description:
        '''কবিতায় কবিতায় সম্পূর্ণ ৩০ পারা কুরআনের বাংলা অনুবাদ। ভাষা ও সাহিত্যে এ এক বিস্ময়কর কীর্তি!
মজার ব্যাপার হলো, কবিতা বলে এর বর্ণনাধারা জটিল, কঠিন বা দুরূহ নয় মোটেও; এর পুরো অনুবাদ অত...''',
    img: 'images/quran_er_kabbanubadh.png',
    review: '(320 Review)',
    seller: ' মুহিব খান ',
    price: 150,
    colors: [
      Colors.black,
      Colors.blue,
      Colors.orange,
    ],
    category: '''Qur'an and\n Tafseer''',
    rate: 4.8,
    quantity: 1,
  ),
];

final List<ProductModel> hadith_and_sunnah = [
  ProductModel(
    title: 'ফয়জুল কালাম',
    description:
        '''ইলমে হাদিসের অজস্র গ্রন্থের মাঝে ফয়জুল কালাম একটি মকবুল সংযোজন। বইটিকে মুফতিয়ে আজম ফয়জুল্লাহ রহ.-এর বয়নসংকলনও বলা চলে। তিনি কোথাও আলোচক হিসেবে আমন্ত্রিত হলে কোনো নির্ধারিত বিষয়ের উপর এক...''',
    img: 'images/faraze_kalam.png',
    review: '(420 Review)',
    seller: 'মুফতীয়ে আযম আল্লামা ফয়যুল্লাহ (র.)',
    price: 150,
    colors: [
      Colors.black,
      Colors.blue,
      Colors.orange,
    ],
    category: '''Hadith and\n Sunnah''',
    rate: 4.5,
    quantity: 2,
  ),
];
