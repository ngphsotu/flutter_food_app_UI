import '/demoData.dart';
import '../../constants.dart';
import 'package:flutter/material.dart';
import 'components/section_title.dart';
import 'components/image_carousel.dart';
import 'components/restaurant_infor_medium_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // use CustomScrollView for better scrollview
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // change background
            backgroundColor: Colors.transparent,
            elevation: 0,
            floating: true,
            // text
            title: Column(
              children: [
                Text(
                  "Delivery to".toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(color: kActiveColor),
                ),
                const Text(
                  "San Francisco",
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
            // text button
            actions: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Filter",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),

          // use all widget directly
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            sliver: SliverToBoxAdapter(
              child: ImageCarousel(),
            ),
          ),

          //
          SliverPadding(
            padding: const EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
              child: SectionTitle(
                title: "Featured Partners",
                press: () {},
              ),
            ),
          ),

          //
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  demoBigImages.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(left: defaultPadding),
                    child: RestaurantInfoMediumCard(
                      press: () {},
                      title: demoMediumCardData[index]['name'],
                      image: demoMediumCardData[index]['image'],
                      rating: demoMediumCardData[index]['rating'],
                      location: demoMediumCardData[index]['location'],
                      deliveryTime: demoMediumCardData[index]['delivertTime'],
                    ),
                  ),
                ),
              ),
            ),
          ),

          //
          SliverPadding(
            padding: const EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
              child: Image.asset("assets/images/Banner.png"),
            ),
          ),

          //
          SliverPadding(
            padding: const EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
              child: SectionTitle(
                title: "Best Pick",
                press: () {},
              ),
            ),
          ),

          //
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  demoBigImages.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(left: defaultPadding),
                    child: RestaurantInfoMediumCard(
                      press: () {},
                      title: demoMediumCardData[index]['name'],
                      image: demoMediumCardData[index]['image'],
                      rating: demoMediumCardData[index]['rating'],
                      location: demoMediumCardData[index]['location'],
                      deliveryTime: demoMediumCardData[index]['delivertTime'],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
