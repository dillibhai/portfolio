import 'package:flutter/material.dart';
import 'package:port/components/bottom_tabs.dart';
import 'package:port/tabs/experience.dart';
import 'package:port/tabs/links.dart';
import 'package:port/tabs/portfolio.dart';
import 'package:port/tabs/profilepage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _tabsPageController;
  int _selectedTabs = 0;
  void initState() {
    _tabsPageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _tabsPageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text(
            "MY PORTFOLIO",
          ),
          centerTitle: true,
        ),
      
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Container(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 45.0,
                        backgroundImage: AssetImage("assets/images/me.png"),
                      ),
                      Text("Dilli Bhandari",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          )),
                      Text("Flutter Developer at Prismasofts",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                    image: AssetImage("assets/images/blue.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 13.0,
                    backgroundColor: Colors.transparent,
                    child: Image.asset("assets/images/user.png"),
                  ),
                  title: Text('Profile'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProfilePage()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: ListTile(
                  title: Text('Portfolio'),
                  leading: CircleAvatar(
                    radius: 13.0,
                    backgroundColor: Colors.transparent,
                    child: Image.asset("assets/images/laptop.png"),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PortFolio()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: ListTile(
                  title: Text('Experience'),
                  leading: CircleAvatar(
                    radius: 13.0,
                    backgroundColor: Colors.transparent,
                    child: Image.asset("assets/images/suitcase.png"),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Experience()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: ListTile(
                  title: Text('Settings'),
                  leading: CircleAvatar(
                    radius: 13.0,
                    backgroundColor: Colors.transparent,
                    child: Image.asset("assets/images/settings.png"),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: ListTile(
                  title: Text('Exit'),
                  leading: CircleAvatar(
                    radius: 13.0,
                    backgroundColor: Colors.transparent,
                    child: Image.asset("assets/images/tab_logout.png"),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: PageView(
                controller: _tabsPageController,
                onPageChanged: (num) {
                  setState(() {
                    _selectedTabs = num;
                  });
                },
                children: [
                  ProfilePage(),
                  PortFolio(),
                  Experience(),
                  LinksPage(),
                  
                ],
              ),
            ),
            BottomTabs(
              selectedTab: _selectedTabs,
              tabPressed: (num) {
                setState(() {
                  _tabsPageController.animateToPage(num,
                      duration: Duration(microseconds: 300),
                      curve: Curves.easeOutCubic);
                });
              },
            ),
          ],
        ));
  }
}
