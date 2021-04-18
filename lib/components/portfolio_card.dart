// import 'package:flutter/material.dart';

class Cardabc {
  final String title;
  final String desc;
  final String date;
  // final String icon;
  final String image;
  final List<String> images;

  Cardabc({this.title, this.desc, this.date, this.image, this.images});
}

List<Cardabc> cardList = [
  Cardabc(
    title: "Social Media App 2.1",
    desc:
        "This is the latest version of my social media app. i want to share my skill on this app you can build easily",
    date: "Feb 26 2021 | 9 (month)s",
    image: "assets/images/mobile.jpg",
  ),
  Cardabc(
    title: "Flower Shop App 2.0",
    desc:
        "Floranext's florist point of sale app gives you all you need to run your flower business on the go with a the Floranext iPad app.",
    date: "Jan 21 2021 | 6 (month)s",
    image: "assets/images/mobileone.png",
  ),
  Cardabc(
    title: "Pet Shop App 2.0",
    desc:
        "This mobile app is a new generation pet store. which is the convenient pet supermarket, where you can find over 40 000 products for animals. ",
    date: "Mar 21 2021 | 7 (month)s",
    image: "assets/images/mobiletwo.jpg",
  ),
  Cardabc(
    title: "Flower Shop App 2.0",
    desc:
        "Floranext's florist point of sale app gives you all you need to run your flower business on the go with a the Floranext iPad app.",
    date: "Jan 21 2021 | 5 (month)s",
    image: "assets/images/mobileone.png",
  ),
];
