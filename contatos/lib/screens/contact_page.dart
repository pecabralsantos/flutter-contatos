import 'package:contatos/controllers/feed_controller.dart';
import 'package:contatos/service/model/contact_dto.dart';
import 'package:contatos/utils/route_arguments.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  FeedController _controller = GetIt.I.get<FeedController>();

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as ContactRouteArguments;
    _controller.getContact(args.contactDTO);
    return Scaffold(
      body: Center(
        child: Text(args.contactDTO.name),
      ),
    );
  }
}
