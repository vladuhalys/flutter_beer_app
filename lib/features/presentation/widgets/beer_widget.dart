import 'package:flutter/material.dart';
import 'package:flutter_beer_app/features/domain/entities/beer/beer.dart';
import 'package:flutter_beer_app/features/presentation/screens/about/about.dart';

class BeerWidget extends StatelessWidget {
  final BeerEntity beer;
  final void Function(BeerEntity article)? onBeerPressed;
  const BeerWidget({super.key, required this.beer, this.onBeerPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: InkWell(
        borderRadius: BorderRadius.circular(25),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => AboutScreen(beer: beer),
            ),
          );
        },
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
            side: const BorderSide(width: 1, color: Colors.black26),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Image.network(
                  beer.imageUrl.toString(),
                  height: 150,
                  width: 100,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(Icons.error);
                  },
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          beer.name,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          beer.tagline,
                          style: const TextStyle(fontSize: 14),
                        ),
                        const SizedBox(height: 75),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('ABV: ${beer.abv}'),
                            Text('IBU: ${beer.ibu}'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
