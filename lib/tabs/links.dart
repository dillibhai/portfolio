import 'package:flutter/material.dart';
import 'package:port/components/links.dart';

import '../constants.dart';

class LinksPage extends StatefulWidget {
  @override
  _LinksPageState createState() => _LinksPageState();
}

class _LinksPageState extends State<LinksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: linkList.length,
      physics: ScrollPhysics(),
      itemBuilder: (context, index) {
        var links = linkList[index];
        return LinkWidget(links: links);
      },
    ));
  }
}

class LinkWidget extends StatelessWidget {
  final Link links;

  const LinkWidget({Key key, this.links}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 25.0),
      child: Container(
        height: 60,
        width: double.infinity,
        // color: Colors.red,
        child: Stack(
          children: [
            Positioned(
              top: 0.0,
              left: 55,
              right: 0,
              bottom: 0.0,
              child: Card(
                  // margin: EdgeInsets.only(top: 20.0),
                  elevation: 1.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Text(
                            links.link,
                            style: Constants.links,
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Positioned(
              top: 0.0,
              left: 5.0,
              right: 375,
              bottom: 0.0,
              child: Image.asset(
                links.image,
                fit: BoxFit.fill,
              ),
            )
          ],
        ),
      ),
    );
  }
}
