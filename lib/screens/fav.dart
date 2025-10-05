import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../oldFiles/loaders.dart';
import '../oldFiles/storage_utility.dart';


class FavouriteIcon extends StatelessWidget {
  const FavouriteIcon({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FavouriteController());

    return Obx(() {
      return IconButton(
        icon: Icon(
          controller.isFavourite(id) ? Icons.favorite : Icons.favorite_outline_rounded,
          color: Colors.red,
        ),
        onPressed: () => controller.toggleFavourite(id),
      );
    });
  }
}




class FavouriteController extends GetxController {
  static FavouriteController get instance => Get.find();

  final favourites=<String,bool>{}.obs;

  @override
  void onInit() {
    super.onInit();
    initFavourite();
  }

  Future<void> initFavourite() async{
    final json=BLocalStorage.instance().readData<String>('favourites');
    if(json!=null){
      final storedFavourites=jsonDecode(json) as Map<String,dynamic>;
      favourites.assignAll(storedFavourites.map((key,value)=>MapEntry(key,value as bool)));
    }
  }

  bool isFavourite(String id){
    return favourites[id]??false;
  }

  void toggleFavourite(String id) {
    if (!favourites.containsKey(id)) {
      favourites[id] = true;
      //BLoaders.customToast(message: 'Added to favourites');
    } else {
      favourites.remove(id);
      //BLoaders.customToast(message: 'Removed from favourites');
    }
    favourites.refresh();
    saveFavouritestToStorage();
  }

  void saveFavouritestToStorage() {
    final encodedFavourites=json.encode(favourites);
    BLocalStorage.instance().saveData('favourites', encodedFavourites);
  }

}