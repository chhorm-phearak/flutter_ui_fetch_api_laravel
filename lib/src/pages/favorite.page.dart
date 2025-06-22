import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../elements/favorite.element.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Favorite"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FavoriteElement(),
            FavoriteElement(),
            FavoriteElement(),
            FavoriteElement(),
            FavoriteElement(),
            FavoriteElement(),
            FavoriteElement(),
            FavoriteElement(),
            FavoriteElement(),
            FavoriteElement(),
          ],
        ),
      ),
    );
  }
}
