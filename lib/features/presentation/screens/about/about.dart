import 'package:flutter/material.dart';
import 'package:flutter_beer_app/features/domain/entities/beer/beer.dart';
import 'package:flutter_beer_app/features/presentation/screens/about/widgets/hops_table.dart';
import 'package:flutter_beer_app/features/presentation/screens/about/widgets/malt_table.dart';

class AboutScreen extends StatelessWidget {
  final BeerEntity beer;
  const AboutScreen({super.key, required this.beer});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(beer.name,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        leading: const BackButton(color: Colors.black),
        foregroundColor: Colors.black,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            Image.network(
              beer.imageUrl,
              height: MediaQuery.of(context).size.height * 0.4,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(beer.tagline,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey)),
                  const SizedBox(height: 15),
                  Text(beer.description,
                      textAlign: TextAlign.justify,
                      maxLines: 10,
                      softWrap: true,
                      style: const TextStyle(
                        fontSize: 16,
                      )),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('ABV: ${beer.abv}',
                          style: const TextStyle(fontSize: 14)),
                      Text('IBU: ${beer.ibu}',
                          style: const TextStyle(fontSize: 14)),
                    ],
                  ),
                  const SizedBox(height: 30),
                  const Divider(color: Colors.black, height: 1.5),
                  const SizedBox(height: 30),
                  const Text('Ingredients',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 20),
                  MaltTable(malt: beer.ingredients.malt),
                  const SizedBox(height: 10),
                  HopsTable(hops: beer.ingredients.hops),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
