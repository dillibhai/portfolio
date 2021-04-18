import 'package:flutter/material.dart';

class BottomTabs extends StatefulWidget {
  final int selectedTab;
  final Function(int) tabPressed;

  BottomTabs({Key key, this.selectedTab, this.tabPressed}) : super(key: key);
  @override
  _BottomTabsState createState() => _BottomTabsState();
}

class _BottomTabsState extends State<BottomTabs> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    _selectedTab = widget.selectedTab ?? 0;
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12.0),
              topRight: Radius.circular(12.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                spreadRadius: 1.0,
                blurRadius: 30.0,
              )
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomTabBtn(
              imagePath: "assets/images/user.png",
              selected: _selectedTab == 0 ? true : false,
              onPressed: () {
                widget.tabPressed(0);
              },
            ),
            BottomTabBtn(
              imagePath: "assets/images/laptop.png",
              selected: _selectedTab == 1 ? true : false,
              onPressed: () {
                widget.tabPressed(1);
              },
            ),
            BottomTabBtn(
              imagePath: "assets/images/suitcase.png",
              selected: _selectedTab == 2 ? true : false,
              onPressed: () {
                widget.tabPressed(2);
              },
            ),
            BottomTabBtn(
              imagePath: "assets/images/link.png",
              selected: _selectedTab == 3 ? true : false,
              onPressed: () {
                widget.tabPressed(3);
              },
            ),
          ],
        ));
  }
}

class BottomTabBtn extends StatelessWidget {
  final String imagePath;
  final bool selected;
  final Function onPressed;

  BottomTabBtn({Key key, this.imagePath, this.selected, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _selected = selected ?? false;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 20.0,
        ),
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(
          color: _selected ? Colors.blue[900] : Colors.transparent,
          width: 2.0,
        ))),
        child: Container(
          child: Image(
            image: AssetImage(imagePath ?? "assets/images/tab_home.png"),
            height: 30.0,
            color: _selected ? Color(0xFFFF1E00) : Colors.black,
          ),
        ),
      ),
    );
  }
}
