import 'package:flutter/material.dart';
import 'package:nft_website/clients.dart';
import 'package:nft_website/explore_by_categories.dart';
import 'package:nft_website/footer.dart';
import 'package:nft_website/how_it_works.dart';
import 'package:nft_website/live_auctions.dart';
import 'package:nft_website/popular_collection.dart';
import 'package:nft_website/ready_for_next_nft_drop.dart';
import 'package:nft_website/top_creators.dart';
import 'hero_section/hero_section.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NFT Website - Developed by Muhammad Umair Khan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const T(),
    );
  }
}

class T extends StatelessWidget {
  const T({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: size.height, child: MyHomePage(size: size)),
            SizedBox(height: 400, child: Clients(size: size)),
            SizedBox(height: size.height, child: LiveAuctions(size: size)),
            SizedBox(height: 400.0, child: HowItWorks(size: size)),
            SizedBox(
              height: 900.0,
              child: PopularCollection(size: size),
            ),
            SizedBox(
              height: 900.0,
              child: ExploreByCategories(size: size),
            ),
            SizedBox(height: 880.0, child: TopCreators(size: size)),
            SizedBox(height: 500.0, child: ReadyForNextNFTDrop(size: size)),
            SizedBox(height: 512.0, child: Footer(size: size)),
          ],
        ),
      ),
    );
  }
}
