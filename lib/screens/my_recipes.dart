//import 'package:etec_homework04_recipes/widgets/recipes_items.dart';
import 'package:flutter/material.dart';

import '../models/recipes_list.dart';
import '../widgets/recipes_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff2d00f7).withOpacity(0.8),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          title: Text('My Recipes'),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ]),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 15.0, top: 20.0, bottom: 20.0),
            child: const Text(
              'Summer Recipes',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: recipes_lists.length,
              itemBuilder: (context, index) {
                return RecipesItems(
                    image: recipes_lists[index]['image'],
                    subtile: recipes_lists[index]['subtitle'],
                    title: recipes_lists[index]['title'],
                    trailing: recipes_lists[index]['trailing']);
              },
            ),
          ),
        ],
      ),
    );
  }
}
