import 'dart:ffi';

import 'package:first_project/core/constants.dart';
import 'package:first_project/core/notifiers.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('image/yeah.png'),
            radius: 100,
          ),
          SizedBox(height: kDouble20),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Name'),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('samuza1987@gmail.com'),
          ),
          ListTile(
            leading: Icon(Icons.web),
            title: Text('web.com'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isDarkModeNotifier.value = !isDarkModeNotifier.value;
        },
        child: ValueListenableBuilder(
          valueListenable: isDarkModeNotifier,
          builder: (context, isDark, child) {
            if (!isDark) {
              return const Icon(Icons.dark_mode);
            } else {
              return const Icon(Icons.light_mode);
            }
          },
        ),
      ),
    );
  }
}
