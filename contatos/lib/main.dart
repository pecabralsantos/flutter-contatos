import 'package:contatos/controllers/feed_controller.dart';
import 'package:contatos/screens/contact_page.dart';
import 'package:contatos/screens/feed_page.dart';
import 'package:contatos/service/api_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';

GetIt getIt = GetIt.instance;

void main() {
  getIt.registerSingleton(ApiService(Dio()));
  getIt.registerSingleton(FeedController());
  runApp(Contacts());
}

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contatos',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.ubuntuTextTheme(),
      ),
      initialRoute: '/contatos',
      routes: {
        '/contatos': (_) => FeedPage(),
        '/detalhe-contato': (_) => ContactPage(),
      },
    );
  }
}
