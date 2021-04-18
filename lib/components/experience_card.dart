// import 'package:flutter/cupertino.dart';

class Experienceabc {
  final String title;
  final String office;
  final String location;
  final String icon;
  final String date;
  final String image;

  Experienceabc(
      {this.title,
      this.office,
      this.location,
      this.icon,
      this.date,
      this.image});
}

List<Experienceabc> experienceList = [
  Experienceabc(
    title: "Flutter Developer",
    office: "Prismasoft",
    location: "New Baneswar KTM",
    date: "February 26 2021",
    image: "assets/images/flutterdev.jpg",
  ),
  Experienceabc(
    title: "Android Developer",
    office: "Softwareica college",
    location: "Dilli Bazar KTM",
    date: "March 26 2021",
    image: "assets/images/android.png",
  ),
  Experienceabc(
    title: "Backend Developer",
    office: "Prismasoft baneswar",
    location: "New Baneswar KTM",
    date: "February 26 2021",
    image: "assets/images/node.png",
  ),
  Experienceabc(
    title: "Intern",
    office: "Prismasoft baneswar",
    location: "New Baneswar KTM",
    date: "March 26 2021",
    image: "assets/images/prisma.jpg",
  ),
];
