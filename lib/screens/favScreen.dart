import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:Read_Lead/db/books.dart';

import '../widgets/reading_card_list.dart';
import 'fav.dart';

class FavouriteBooksScreen extends StatelessWidget {
  final FavouriteController controller = Get.put(FavouriteController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Favourite Books")),
      body: Obx(() {
        final favs = books.where((b) => controller.isFavourite(b.id)).toList();
        if (favs.isEmpty) {
          return Center(child: Text("No favourites yet."));
        }

        return ListView.builder(
          itemCount: favs.length,
          itemBuilder: (context, index) {
            final book = favs[index];
            return ReadingListCard(
              id: book.id,
              image: book.coverUrl,
              title: book.title,
              auth: book.author,
              rating: book.rating,
              bookUrl: book.bookUrl,
            );
          },
        );
      }),
    );
  }
}
