// ignore_for_file: use_key_in_widget_constructors, prefer_interpolation_to_compose_strings, unnecessary_new, avoid_unnecessary_containers, no_leading_underscores_for_local_identifiers, library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Next extends StatefulWidget {
  @override
  _NextState createState() => _NextState();
}

class _NextState extends State<Next> {
  String username = '---';

  Future<void> getname() async {
    final _prefs = await SharedPreferences.getInstance();
    username = _prefs.getString('username').toString();
    setState(
      () {},
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text("read value from sharedpreference is: $username"),
            ),
            ElevatedButton(
              child: Text("page2"),
              onPressed: () async {
                await getname();
              },
            ),
          ],
        ),
      ),
    );
  }
}
