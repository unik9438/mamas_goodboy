import 'package:flutter/material.dart';
import 'package:mamas_goodboy/screen/profile_screen.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AccountScreen()),
                    );
                  },
                  child: SizedBox(
                    height: 80,
                    child: CircleAvatar(
                      minRadius: 10,
                      maxRadius: 200,
                      child: Image.asset(
                        "assets/xyz1.png",
                      ),
                    ),
                  ),
                ),
                const Text(
                  'Sammy Chhetri',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                const Text(
                  'Samay.unik@gmail.com',
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              // Handle the onTap action for the Home item.
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text('Favorites'),
            onTap: () {
              // Handle the onTap action for the Favorites item.
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () {
              // Handle the onTap action for the Profile item.
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
