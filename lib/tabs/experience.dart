import 'package:flutter/material.dart';
import 'package:port/components/experience_card.dart';

import '../constants.dart';

class Experience extends StatefulWidget {
  @override
  _ExperienceState createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: experienceList.length,
      physics: ScrollPhysics(),
      itemBuilder: (context, index) {
        var experience = experienceList[index];
        return ExperienceWidget(experience: experience);
      },
    ));
  }
}

class ExperienceWidget extends StatelessWidget {
  final Experienceabc experience;

  const ExperienceWidget({Key key, this.experience}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200.0,
      padding: EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Positioned(
            top: 0.0,
            left: 163,
            right: 0,
            bottom: 0.0,
            child: Card(
              elevation: 7.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Container(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/images/me.png"),
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          experience.title,
                          style: Constants.Port,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.apartment,
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          experience.office,
                          style: Constants.Descport,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.place_outlined,
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          experience.location,
                          style: Constants.Descport,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_today,
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          experience.date,
                          style: Constants.Descport,
                        ),
                      ],
                    ),
                  ],
                ),
              )),
            ),
          ),
          // Positioned(
          //   top: 0.0,
          //   left: 0,
          //   // right: 250,
          //   bottom: 0.0,
          //   child: Card(
          //     // elevation: 7.0,
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(5.0),
          //     ),
          //     color: Colors.pink,
          //   ),
          // ),
          Positioned(
            top: 0.0,
            left: 0,
            right: 250,
            bottom: 0.0,
            child: Image.asset(
              experience.image,
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}
