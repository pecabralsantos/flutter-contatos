import 'package:contatos/controllers/feed_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  FeedController _controller = GetIt.I.get<FeedController>();

  @override
  void initState() {
    _controller.getListContacts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (_) {
          if (_controller.contactList.isEmpty) {
            return Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
              itemCount: _controller.contactList.length,
              itemBuilder: (_, index) {
                var contactList = _controller.contactList[index];
                return ListTile(
                  leading: Image.network(contactList.photo),
                  title: Text(contactList.name),
                );
              },
            );
          }
        },
      ),
    );
  }
}
