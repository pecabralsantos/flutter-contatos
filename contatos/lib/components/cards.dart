import 'package:contatos/service/model/contact_dto.dart';
import 'package:contatos/utils/route_arguments.dart';
import 'package:flutter/material.dart';

class Cards {
  static feed(BuildContext context, ContactDTO dto) {
    return Card(
      margin: EdgeInsets.fromLTRB(8, 4, 8, 8),
      elevation: 3,
      color: Colors.blueGrey.shade50,
      shadowColor: Colors.blueGrey,
      child: InkWell(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 60,
                height: 60,
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.black,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(dto.photo),
                ),
              ),
              SizedBox(width: 16),
              Flexible(
                child: Text(
                  dto.name,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          Navigator.pushNamed(
            context,
            '/detalhe-contato',
            arguments: ContactRouteArguments(dto),
          );
        },
      ),
    );
  }
}
