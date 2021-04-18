import 'package:flutter/material.dart';
import 'package:port/components/portfolio_card.dart';

import '../constants.dart';

class PortFolio extends StatefulWidget {
  @override
  _PortPholioState createState() => _PortPholioState();
}

class _PortPholioState extends State<PortFolio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: cardList.length,
        physics: ScrollPhysics(),
        itemBuilder: (context, index) {
          var card = cardList[index];
          return CardWidget(card: card);
        },
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final Cardabc card;

  CardWidget({Key key, this.card}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 220.0,
      padding: EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Positioned(
            top: 0.0,
            left: 142,
            right: 0,
            bottom: 0.0,
            child: Card(
              elevation: 7.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Container(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/images/me.png"),
                        ),
                        Text(
                          card.title,
                          style: Constants.Port,
                        ),
                      ],
                    ),
                    Text(
                      card.desc,
                      style: Constants.Descport,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.calendar_today,
                        ),
                        Text(
                          card.date,
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
            right: 270,
            bottom: 0.0,
            child: Image.asset(
              card.image,
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}
