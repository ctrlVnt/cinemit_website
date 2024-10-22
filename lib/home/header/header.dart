import 'dart:convert';

import 'package:cinemit_website/models/movies.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import '../../global/apikeys.dart';
import '../../global/utils.dart';

class Header extends StatefulWidget {
  const Header({super.key});
   @override
  _Header createState() => _Header();
}

class _Header extends State<Header> {
  
  late List<MovieData> movies = [];
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    fetchData();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _autoScroll();
    });
  }

  Future<void> fetchData() async {
    try {
      
        final response = await http.get(
          Uri.parse('https://api.themoviedb.org/3/movie/now_playing?page=1&language=it&region=it'),
          headers: {
            'Authorization': 'Bearer $ThemoviedbApiKey',
            'accept': 'application/json',
          },
        );

        if (response.statusCode == 200) {
          final Map<String, dynamic> responseData = json.decode(response.body);
          final List<dynamic> moviesData = responseData['results'] ?? [];
          
          final List<MovieData> fetchedMovies = moviesData
              .map((movieJson) => MovieData.fromJson(movieJson))
              .where((movie) => movie.immagine!=null)
              .toList();
              
              setState(() {
                movies.addAll(fetchedMovies);
              });
        }
    } catch (e) {
      print('Eccezione durante la richiesta: $e');
    }
  }

  void _autoScroll() {
    Future.delayed(const Duration(seconds: 2)).then((_) {
      if (mounted && _scrollController.hasClients) {
        final maxScrollExtent = _scrollController.position.maxScrollExtent;
        _scrollController.animateTo(
          maxScrollExtent,
          duration: const Duration(seconds: 60),
          curve: Curves.linear,
        ).then((_) {
          if (mounted) {
            _scrollController.jumpTo(0);
            _autoScroll();
          }
        });
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

  bool isScreenWide = MediaQuery.sizeOf(context).width >= 700;

    return Stack(
        children:[ 
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                // Lista dei film come sfondo
                Positioned.fill(
                  child: Opacity(
                    opacity: 0.2,  // Puoi regolare l'opacità dello sfondo
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: _scrollController,
                      itemCount: movies.length,
                      itemBuilder: (context, index) {
                        final movie = movies[index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network(
                            movie.immagine!,
                            height: MediaQuery.sizeOf(context).height / 3,
                            width: isScreenWide ? 250 : 80,
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    ),
                  ),
                ),

                // Contenuto in primo piano
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'lib/assets/logo.png',
                      width: isScreenWide ? 150 : 100,
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      width: 1200,
                      child: Text(
                        'Benvenuto in CineMit',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: isScreenWide ? 80 : 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      width: 1200,
                      child: Text(
                        'L\'unica app di incontri di gruppo dedicata agli amanti del cinema. Condividi una fantastica'
                        'esperienza cinematografica in compagnia di altri cinefili.',
                        style: TextStyle(fontSize: isScreenWide ? 30 : 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 50),
                  ],
                ),
              ],
            ),
          )
        ]
      );
  }
}