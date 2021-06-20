import 'package:contatos/screens/feed_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(Contacts());

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contatos',
      home: FeedPage(),
    );
  }
}
