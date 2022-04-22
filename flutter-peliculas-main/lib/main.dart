import 'package:flutter/material.dart';
import 'package:peliculas/login.dart';
import 'package:peliculas/screens/screens.dart';
import 'package:provider/provider.dart';

import 'package:peliculas/providers/movies_provider.dart';
 
void main() => runApp(AppState());


class AppState extends StatelessWidget {// estado de la aplicacion donde llamo el gestor de estados 

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [// se inicializa el gestor de estados 
        ChangeNotifierProvider(create: ( _ ) => MoviesProvider(), lazy: false ),// llamo al gestor de estados 
      ],
      child: MyApp(),
    );
  }
}


 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Películas',
      initialRoute: 'home',
      routes: {
        'home':    ( _ ) => loginpage(),
        'details': ( _ ) => DetailsScreen(),
      },
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          color: Colors.indigo
        )
      ),
    );
  }
}