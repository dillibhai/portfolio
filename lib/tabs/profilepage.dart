import 'package:flutter/material.dart';

import '../constants.dart';

class ProfilePage extends StatefulWidget {
  final int selectdiv;

  ProfilePage({Key key, this.selectdiv}) : super(key: key);
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Center(
                child: Container(
                  width: 300.0,
                  // color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ListTile(
                        title: Text(
                          'Nice to meet you',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        leading: SizedBox(
                          child: Image.asset(
                            "assets/images/hands.png",
                            color: Colors.white,
                            height: 40.0,
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 70.0,
                        // backgroundColor: Colors.white,
                        backgroundImage: AssetImage("assets/images/me.png"),
                      ),
                      Text("Dilli Bhandari",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                      Text("Flutter Developer",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/blue.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              height: 300,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 50.0,
                    width: double.infinity,
                    color: Colors.grey[300],
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "OH HELLO THERE,",
                        style: Constants.HeadingBlog,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                          "My name is Dilli Bhandari, I am an android and IOS application developer. who enjoys working on mobile application at all, I am from surkhet, I studied BSC(Hons) in computing from Softwarica college of IT and e-commerce",
                          style: Constants.Desc),
                    ),
                  ),
                  Container(
                    height: 50.0,
                    width: double.infinity,
                    color: Colors.grey[300],
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "WHERE HAVE I BEEN?",
                        style: Constants.HeadingBlog,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                          "I am open to career opportunities to expand my flutter knowledge, and i would love to join any teams and companies that share values in flutter developer",
                          style: Constants.Desc),
                    ),
                  ),
                  Container(
                    height: 50.0,
                    width: double.infinity,
                    color: Colors.grey[300],
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "PROFESSIONAL FLUTTER DEVELOPER",
                        style: Constants.HeadingBlog,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                          "My name is Dilli Bhandari, I am an android and IOS application developer. who enjoys working on mobile application at all, I am from surkhet, I studied BSC(Hons) in computing from Softwarica college of IT and e-commerce",
                          style: Constants.Desc),
                    ),
                  ),
                  Container(
                    height: 50.0,
                    width: double.infinity,
                    color: Colors.grey[300],
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "CURRENTS PROJECTS",
                        style: Constants.HeadingBlog,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                          "Recently, I have been working on some small projects, and one of them is a e-commerce app for shoe market dedicated to customer for helping increase marketing value of company.",
                          style: Constants.Desc),
                    ),
                  ),
                  Container(
                    height: 50.0,
                    width: double.infinity,
                    color: Colors.grey[300],
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "HOBBY",
                        style: Constants.HeadingBlog,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                          "Other than my passion for building android and IOS application, i have a strong intrest in travelling with friends.",
                          style: Constants.Desc),
                    ),
                  ),
                  Container(
                    height: 50.0,
                    width: double.infinity,
                    color: Colors.grey[300],
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "WHAT I AM LOOKING FOR",
                        style: Constants.HeadingBlog,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                          "I am open to career opportunities to expand my flutter knowledge, and i would love to join any teams and companies that share values in flutter developer",
                          style: Constants.Desc),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class AboutMe extends StatelessWidget {
//   final bool heading;
//   final String title;

//   AboutMe({
//     Key key,
//     this.heading,
//     this.title,
//   }) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     bool _heading = heading ?? false;
//     return Container(
//       child: Column(
//         children: [
//           GestureDetector(
//             child: Container(
//               height: _heading ? 60.0 : 200,
//               decoration: BoxDecoration(
//                 color: _heading ? Colors.grey : Colors.blue,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
