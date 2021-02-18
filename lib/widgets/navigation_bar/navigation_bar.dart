import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child: Row(children: <Widget>[
          SizedBox(
            height: 80,
            width: 150,
            child: Image.asset('assets/logo.png'),
          ),
          _HeadItem('BTS India Fancafé'),
          SizedBox(
            width: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _NavBarItem('Guide To BTS'),
              SizedBox(
                width: 60,
              ),
              _NavBarItem('Updates'),
              SizedBox(
                width: 60,
              ),
              _NavBarItem('Community Chat'),
              SizedBox(
                width: 60,
              ),
              _NavBarItem('Your Profile'),
              SizedBox(
                width: 60,
              ),
            ],
          )
        ]));
  }
}

class _HeadItem extends StatelessWidget {
  final String title;
  const _HeadItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(0, 0, 0, 100),
          fontFamily: 'Lovelo Line Bold'),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 12,
        color: Color.fromRGBO(0, 0, 0, 100),
        fontFamily: 'Lovelo Black',
      ),
    );
  }
}
