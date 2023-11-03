import 'package:flutter/material.dart';
import 'package:flutter_beer_app/features/domain/entities/beer/beer.dart';

class BeerWidget extends StatelessWidget {
  final BeerEntity beer;
  final void Function(BeerEntity article)? onBeerPressed;
  const BeerWidget({super.key, required this.beer, this.onBeerPressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(beer.name),
      subtitle: Text(beer.tagline),
      onTap: () => onBeerPressed!(beer),
    );
  }
}
