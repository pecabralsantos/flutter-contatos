import 'package:contatos/utils/route_arguments.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as ContactRouteArguments;
    return Scaffold(
      appBar: AppBar(elevation: 0),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.maxFinite,
            height: 250,
            color: Colors.grey,
            child: Image.network(args.contactDTO.photo, fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(args.contactDTO.name, style: TextStyle(fontSize: 24)),
          ),
          Divider(thickness: 2),
          Container(
            padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: Row(
              children: [
                Icon(Icons.phone_outlined),
                SizedBox(width: 16),
                Text(args.contactDTO.phone),
              ],
            ),
          ),
          Divider(thickness: 2, indent: 56),
          Container(
            padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: Row(
              children: [
                Icon(Icons.email_outlined),
                SizedBox(width: 16),
                Text(args.contactDTO.email),
              ],
            ),
          ),
          Divider(thickness: 2, indent: 56),
          Container(
            padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: Row(
              children: [
                Icon(Icons.date_range_outlined),
                SizedBox(width: 16),
                Text(args.contactDTO.birthday),
              ],
            ),
          ),
          Divider(thickness: 2),
          Container(
            margin: EdgeInsets.fromLTRB(16, 16, 0, 8),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Icon(Icons.person_outlined),
                Container(
                  width: 250,
                  margin: EdgeInsets.fromLTRB(16, 0, 8, 0),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Text(args.contactDTO.about),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
