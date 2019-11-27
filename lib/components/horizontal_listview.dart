import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/categories/suit.png',
            image_caption: 'Men Suits',
          ),
          Category(
            image_location: 'images/categories/womensuits.png',
            image_caption: 'Women Suits',
          ),
          Category(
            image_location: 'images/categories/littleblackdress.png',
            image_caption: 'Women Dresses',
          ),
          Category(
            image_location: 'images/categories/trousers.png',
            image_caption: 'Trousers',
          ),
          Category(
            image_location: 'images/categories/tie.png',
            image_caption: 'Ties',
          ),
          Category(
            image_location: 'images/categories/jeans.png',
            image_caption: 'Jean Trousers',
          ),
          Category(
            image_location: 'images/categories/handbag.png',
            image_caption: 'Women Handbags',
          ),
          Category(
            image_location: 'images/categories/boots.png',
            image_caption: 'Boots',
          ),
          Category(
            image_location: 'images/categories/vintageglasses.png',
            image_caption: 'Vintage Sunglasses',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    this.image_location,
    this.image_caption
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 60.0,
            child: ListTile(
            title: Image.asset(
              image_location,
              width: 60.0,
              height: 60.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption),
            ),
          ),
        ),
      ),
    );
  }
}