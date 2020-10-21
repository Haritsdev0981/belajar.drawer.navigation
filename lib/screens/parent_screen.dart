import 'package:drawer_navigation/screens/menus/archive_screen.dart';
import 'package:drawer_navigation/screens/menus/favorite_screen.dart';
import 'package:drawer_navigation/screens/menus/inbox_screen.dart';
import 'package:drawer_navigation/screens/menus/outbox_screen.dart';
import 'package:drawer_navigation/screens/menus/spam_screen.dart';
import 'package:drawer_navigation/screens/menus/trash_screen.dart';
import 'package:flutter/material.dart';

class DrawerItem {
  final String title;
  final IconData iconData;

  DrawerItem({this.title, this.iconData});
}

class ParentScreen extends StatefulWidget {
  @override
  _ParentScreenState createState() => _ParentScreenState();
}

class _ParentScreenState extends State<ParentScreen> {
  int _selectedDrawerInbox = 0;
  final drawerItem = [
    DrawerItem(title: 'inbox', iconData: Icons.inbox),
    DrawerItem(title: 'OutBox', iconData: Icons.send),
    DrawerItem(title: 'Favorite', iconData: Icons.favorite),
    DrawerItem(title: 'Archive', iconData: Icons.archive),
    DrawerItem(title: 'Trash', iconData: Icons.restore_from_trash),
    DrawerItem(title: 'Spam', iconData: Icons.info),
  ];
  final List<Widget> menu = <Widget>[
    InboxScreen(),
    OutboxScreen(),
    FavoriteScreen(),
    ArchiveScreen(),
    TrashScreen(),
    SpamScreen()
  ];

  _onSelectedItem(int index) {
    setState(() {
      _selectedDrawerInbox = index;
    });
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(drawerItem[_selectedDrawerInbox].title)),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Harits'),
              accountEmail: Text('haritsdeveloper@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  'H',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            ListTile(
              title: Text(
                drawerItem[0].title,
              ),
              leading: Icon(drawerItem[0].iconData),
              onTap: () {
                _onSelectedItem(0);
              },
              selected: 0 == _selectedDrawerInbox,
            ),
            ListTile(
              title: Text(
                drawerItem[1].title,
              ),
              leading: Icon(drawerItem[1].iconData),
              onTap: () {
                _onSelectedItem(1);
              },
              selected: 1 == _selectedDrawerInbox,
            ),
            ListTile(
              title: Text(
                drawerItem[2].title,
              ),
              leading: Icon(drawerItem[2].iconData),
              onTap: () {
                _onSelectedItem(2);
              },
              selected: 2 == _selectedDrawerInbox,
            ),
            ListTile(
              title: Text(
                drawerItem[3].title,
              ),
              leading: Icon(drawerItem[3].iconData),
              onTap: () {
                _onSelectedItem(3);
              },
              selected: 3 == _selectedDrawerInbox,
            ),
            ListTile(
              title: Text(
                drawerItem[4].title,
              ),
              leading: Icon(drawerItem[4].iconData),
              onTap: () {
                _onSelectedItem(4);
              },
              selected: 4 == _selectedDrawerInbox,
            ),
            ListTile(
              title: Text(
                drawerItem[5].title,
              ),
              leading: Icon(drawerItem[5].iconData),
              onTap: () {
                _onSelectedItem(5);
              },
              selected: 5 == _selectedDrawerInbox,
            ),
          ],
        ),
      ),
      body: menu.elementAt(_selectedDrawerInbox),
    );
  }
}
