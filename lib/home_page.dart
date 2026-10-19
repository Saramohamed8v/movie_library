import 'package:flutter/material.dart';

import 'movie.dart';

import 'movie_card.dart';

class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override

  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {

  String searchText = '';

  bool isGrid = true;

  int discount = 20;

  @override

  Widget build(BuildContext context) {

    final filteredMovies = movies.where((movie) {

      final query = searchText.toLowerCase();

      return movie.title.toLowerCase().contains(query) ||

          movie.genre.toLowerCase().contains(query);

    }).toList();

    return Scaffold(

      appBar: AppBar(

        title: const Text('Movie Library'),

        actions: [

          IconButton(

            tooltip: isGrid ? 'List view' : 'Grid view',

            icon: Icon(

              isGrid ? Icons.view_list : Icons.grid_view,

            ),

            onPressed: () {

              setState(() {

                isGrid = !isGrid;

              });

            },

          ),

        ],

      ),

      body: Column(

        children: [

          Padding(

            padding: const EdgeInsets.all(16),

            child: TextField(

              onChanged: (value) {

                setState(() {

                  searchText = value;

                });

              },

              decoration: InputDecoration(

                hintText: 'Search movies...',

                prefixIcon: const Icon(Icons.search),

                border: OutlineInputBorder(

                  borderRadius: BorderRadius.circular(14),

                ),

              ),

            ),

          ),

          Expanded(

            child: filteredMovies.isEmpty

                ? const Center(

              child: Text('No movies found'),

            )

                : isGrid

                ? GridView.builder(

              padding: const EdgeInsets.all(8),

              itemCount: filteredMovies.length,

              gridDelegate:

              const SliverGridDelegateWithFixedCrossAxisCount(

                crossAxisCount: 2,

                childAspectRatio: 0.48,

              ),

              itemBuilder: (context, index) {

                return MovieCard(

                  movie: filteredMovies[index],

                  discount: discount,

                  onDiscountTap: () {

                    setState(() {

                      discount--;

                    });

                  },

                );

              },

            )

                : ListView.builder(

              padding: const EdgeInsets.all(8),

              itemCount: filteredMovies.length,

              itemBuilder: (context, index) {

                return SizedBox(

                  height: 220,

                  child: MovieCard(

                    movie: filteredMovies[index],

                    discount: discount,

                    onDiscountTap: () {

                      setState(() {

                        discount--;

                      });

                    },

                  ),

                );

              },

            ),

          ),

        ],

      ),

    );

  }

}